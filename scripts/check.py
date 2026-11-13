#!/usr/bin/env python3
"""Run the maintained offline regression suite; no ADB, vehicles or emulators."""
from pathlib import Path
import argparse,json,os,subprocess,sys,time
from test_support import build_variant
ROOT=Path(__file__).resolve().parent.parent
SUITE=[
 'tests/test_build.py','tests/debug_variant/run.py','tests/toolchain/test_toolchain.py',
 'tests/upstream_core/run.py',
 'tests/audio_scene/run.py','tests/audio_scene/test_hooks.py','tests/audio_scene/test_prompt_hooks.py',
 'tests/wireless_audio_handoff/run.py','tests/navigation_audio_probe/run.py','tests/navigation_voice/run.py',
 'tests/cluster_video_gate/run.py','tests/mist_layout/check_route.py','tests/mist_layout/run.py',
 'tests/cluster_settings/test_cluster.py','tests/cluster_settings/test_power_recovery.py',
 'tests/cluster_settings/test_amap_output.py','tests/cluster_settings/test_publisher_lifecycle.py',
 'tests/lane_capability/test_lane_capability.py',
 'tests/direct_oes/run_checks.py','tests/video_visibility/run_checks.py','tests/frame_rate/run.py',
 'tests/test_connection_speed.py','tests/test_wired_configuration.py','tests/test_wired_shutdown.py',
 'tests/test_wired_state.py','tests/test_video_pipeline.py','tests/test_crypto.py',
 'tests/test_service.py','tests/test_direct_navigation.py','tests/test_display_state.py',
 'tests/test_mtk_compat.py','tests/test_slim.py','tests/startup_settings/test_startup.py',
 'scripts/test_logs.py','scripts/test_log_persistence.py','scripts/test_hotspot.py',
]
def main():
 parser=argparse.ArgumentParser(description=__doc__)
 parser.add_argument('--only',nargs='+',choices=SUITE)
 parser.add_argument('--variant',choices=['debug','release'],help='Check this variant; otherwise use the last successful build.')
 args=parser.parse_args();out=ROOT/'build/checks';out.mkdir(parents=True,exist_ok=True)
 variant=args.variant or build_variant(ROOT)
 env=dict(os.environ,SIXLINK_BUILD_VARIANT=variant)
 results=[]
 for test in args.only or SUITE:
  start=time.monotonic();name=test.replace('/','_').removesuffix('.py');log=out/(name+'.log')
  print('CHECK '+test,flush=True)
  try:
   with log.open('w') as f:
    r=subprocess.run([sys.executable,str(ROOT/test)],cwd=ROOT,env=env,stdout=f,stderr=subprocess.STDOUT,timeout=180)
   code=r.returncode
  except subprocess.TimeoutExpired:code=124
  results.append({'test':test,'variant':variant,'passed':code==0,'exit_code':code,'seconds':round(time.monotonic()-start,2),'log':str(log.relative_to(ROOT))})
  print(('PASS ' if code==0 else 'FAIL ')+test,flush=True)
 summary=out/'summary.json'
 if args.only and summary.exists():
  previous={item['test']:item for item in json.loads(summary.read_text())}
  previous.update({item['test']:item for item in results})
  summary.write_text(json.dumps([previous[t] for t in SUITE if t in previous],indent=2)+'\n')
 else:summary.write_text(json.dumps(results,indent=2)+'\n')
 print(str(sum(x['passed'] for x in results))+'/'+str(len(results))+' suites passed',flush=True)
 if not all(x['passed'] for x in results):sys.exit(1)
if __name__=='__main__':main()
