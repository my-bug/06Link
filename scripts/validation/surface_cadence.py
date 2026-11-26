"""Read 10 seconds of new frame presentation times from one SurfaceFlinger layer."""
import argparse
import math
import shlex
import subprocess
import time


WINDOW_NS = 10_000_000_000
PENDING = (1 << 63) - 1


def select_layer(names, requested):
    if requested is not None:
        if names.count(requested) == 1:
            return requested
        raise ValueError("指定的图层不存在或重名，请查看 --list。")
    candidates = [name for name in names if "SurfaceView" in name
                  and "com.sixlink.car/" in name and "CarPlayHostActivity" in name]
    if len(candidates) != 1:
        raise ValueError("无法唯一识别投屏图层。可用 --list 查名称，再用 --layer 指定。")
    return candidates[0]


def present_times(dump):
    # AOSP FrameTracker: desired, actual present, frame ready (nanoseconds).
    lines = [line.split() for line in dump.strip().splitlines()]
    if not lines or len(lines[0]) != 1 or not lines[0][0].isdigit():
        raise ValueError("系统未返回可识别的图层呈现时间。")
    result = set()
    saw_rows = False
    separated = False
    for row in lines[1:]:
        if not row:
            separated = saw_rows
            continue
        if separated or len(row) != 3:
            raise ValueError("返回的图层时间格式不明确。")
        saw_rows = True
        _, present, _ = map(int, row)
        if 0 < present < PENDING:
            result.add(present)
    return result


def summarize(times, start):
    frames = sorted(t for t in times if start <= t < start + WINDOW_NS)
    gaps = sorted((b - a) / 1_000_000 for a, b in zip(frames, frames[1:]))
    if not gaps:
        raise ValueError("窗口内的有效呈现次数不足，无法计算帧间隔。")
    p99 = gaps[math.ceil(0.99 * len(gaps)) - 1]
    return (f"系统在 10 秒内记录到图层呈现 {len(frames)} 帧，平均 {len(frames) / 10:.1f} 帧/秒。"
            f"窗口内完整帧间隔 P99 为 {p99:.1f} 毫秒，最长 {gaps[-1]:.1f} 毫秒，"
            f"超过 50 毫秒共 {sum(gap > 50 for gap in gaps)} 次。")


def capture(dump, requested):
    def names():
        return dump("--list").splitlines()

    layer = select_layer(names(), requested)
    previous = present_times(dump("--latency", layer))
    if not previous:
        raise ValueError("当前图层没有有效的呈现时间，无法测量。")
    # Ignore frames from before this run. Wait for fresh timestamps on both
    # sides of the 10-second window, without mixing host and device clocks.
    baseline = max(previous)
    observed = set()
    start = None
    print(f"正在采样 {layer}。请让画面持续滚动约 12 秒。", flush=True)
    deadline = time.monotonic() + 15
    while time.monotonic() < deadline:
        time.sleep(0.4)
        select_layer(names(), layer)
        page = present_times(dump("--latency", layer))
        if previous.isdisjoint(page):
            raise ValueError("图层时间记录已中断或被覆盖，本次无法比较。")
        previous = page
        observed.update(t for t in page if t > baseline)
        if observed and start is None:
            start = min(observed)
        if start is not None and max(observed) >= start + WINDOW_NS:
            return summarize(observed, start)
    raise ValueError("缺少覆盖完整 10 秒的新画面记录，无法计算本次结果。")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--serial", help="ADB 设备序列号")
    parser.add_argument("--layer", help="唯一、完整的投屏画面图层名称")
    parser.add_argument("--list", action="store_true", help="列出系统图层并退出")
    args = parser.parse_args()
    adb = ["adb"] + (["-s", args.serial] if args.serial else [])

    def dump(*arguments):
        command = shlex.join(["dumpsys", "SurfaceFlinger", *arguments])
        return subprocess.run([*adb, "shell", command], check=True, text=True,
                              stdout=subprocess.PIPE, timeout=4).stdout

    try:
        print(dump("--list") if args.list else capture(dump, args.layer))
    except (ValueError, OSError, subprocess.SubprocessError) as exc:
        parser.exit(1, f"采样未完成。{exc}\n")


if __name__ == "__main__":
    main()
