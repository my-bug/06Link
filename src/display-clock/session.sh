# APP_PID and DIR are set by the private, per-process launcher.
# Only the empirically tested E01 mode is accepted. All output is a tiny receipt.
PLL=/proc/clkmgr/pll_test
FSEL=/proc/clkmgr/pll_fsel
FH=/proc/freqhopping/status
LOCK=/data/local/tmp/06link-display-clock.lock
umask 022
RESULT="$DIR/result-$TOKEN"
LEASE="$DIR/lease-$TOKEN"
receipt() { echo "$1" > "$RESULT.new"; chmod 644 "$RESULT.new"; mv "$RESULT.new" "$RESULT"; }
read_con1() { cat "$PLL" | busybox grep 'TVDPLL  reg1' | busybox sed 's/.*=\[//;s/\].*//'; }
lease_valid() {
    kill -0 "$APP_PID" 2>/dev/null || return 1
    value=$(cat "$LEASE" 2>/dev/null)
    case "$value" in ''|*[!0-9]*) return 1 ;; esac
    now=$(busybox cut -d. -f1 /proc/uptime)
    case "$now" in ''|*[!0-9]*) return 1 ;; esac
    [ "$now" -ge "$value" ] && [ $((now - value)) -le 10 ]
}
boot=$(cat /proc/sys/kernel/random/boot_id)
locked=0
for n in 1 2 3 4 5 6 7 8 9 10 11 12; do
    if mkdir "$LOCK" 2>/dev/null; then locked=1; break; fi
    lease_valid || exit 0
    # /data/local/tmp survives reboot. Reclaim only our dead owner's journal.
    old_pid=$(cat "$LOCK/pid" 2>/dev/null)
    case "$old_pid" in
        '')
            # An interrupted mkdir-before-pid-write must not block the next boot.
            # Wait several polls so a live helper can finish publishing its PID.
            if [ "$n" -ge 4 ] && [ ! -s "$LOCK/pid" ]; then
                rm -f "$LOCK/pid" "$LOCK/original" "$LOCK/boot"
                rmdir "$LOCK" 2>/dev/null
            fi ;;
        *[!0-9]*) ;;
        *)
        if [ "$(cat "$LOCK/boot" 2>/dev/null)" != "$boot" ] || ! kill -0 "$old_pid" 2>/dev/null; then
            original=$(cat "$LOCK/original" 2>/dev/null)
            if [ "$original" = e9d89 ]; then
                case "$(read_con1)" in
                    0x811cd06e|0x011cd06e) echo '6 e9d89' > "$FSEL" ;;
                esac
            fi
            rm -f "$LOCK/pid" "$LOCK/original" "$LOCK/boot"
            rmdir "$LOCK" 2>/dev/null
        fi ;;
    esac
    busybox sleep 1
done
if [ "$locked" != 1 ]; then receipt failed:busy; exit 1; fi
echo "$$" > "$LOCK/pid"
echo "$boot" > "$LOCK/boot"
changed=0
failure=
restored() {
    if [ -n "$failure" ]; then receipt "failed:$failure;restored:$reason"; else receipt "restored:$reason"; fi
}
restore() {
    if [ "$changed" = 1 ]; then
        current=$(read_con1)
        case "$current" in
            0x811cd06e|0x011cd06e)
                echo '6 e9d89' > "$FSEL"
                current=$(read_con1)
                case "$current" in
                    0x810e9d89|0x010e9d89) restored ;;
                    *) receipt failed:restore-readback ;;
                esac ;;
            0x810e9d89|0x010e9d89) restored ;;
            *) receipt failed:clock-changed-externally ;;
        esac
    fi
    rm -f "$LOCK/pid" "$LOCK/original" "$LOCK/boot" "$LEASE" "$DIR/run-$TOKEN.sh"
    rmdir "$LOCK" 2>/dev/null
}
reason=exit
trap restore EXIT
trap 'reason=signal; exit 0' HUP INT TERM
lease_valid || exit 0
original=$(read_con1)
case "$original" in
    0x810e9d89|0x010e9d89) ;;
    *) receipt failed:unverified-clock; exit 2 ;;
esac
fh=$(cat "$FH" | busybox awk '$1 == 6 { print $2 }')
if [ "$fh" != 0 ]; then receipt failed:frequency-hopping; exit 3; fi
if [ ! -w "$FSEL" ]; then receipt failed:clock-access; exit 4; fi
# Set changed before the write so even a failed readback runs the restore path.
echo e9d89 > "$LOCK/original"
changed=1
echo '6 1cd06e' > "$FSEL"
case "$(read_con1)" in
    0x811cd06e|0x011cd06e) receipt active:60 ;;
    *) reason=readback; failure=enable-readback; receipt failed:enable-readback; exit 5 ;;
esac
while lease_valid; do busybox sleep 1; done
reason=lease-ended
exit 0
