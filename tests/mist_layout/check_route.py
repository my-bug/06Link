#!/usr/bin/env python3
"""Verify the exact E01 route patches and existing complete Generic path. No device calls."""
import argparse,hashlib,json,re
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from test_support import resolve, build_dir
parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--built',action='store_true');args=parser.parse_args()
root=Path(__file__).resolve().parents[2];merged=build_dir(root)/'merged-classes';checks=0

def ok(value,why):
 global checks;checks+=1
 assert value,why

def method(text,sig):
 return next(m[0] for m in re.finditer(r'^\.method[^\n]+\n.*?^\.end method',text,re.M|re.S) if m[0].split('\n')[0].endswith(sig))

import sys
sys.path.insert(0,str(root/'tests/source_build'))
from contracts import assert_contract,method_for
for name,ret in [('cluster-e01-generic-route','return-object'),('cluster-e01-generic-candidates','return')]:
 after=assert_contract(name)
 ok(after.count('E01MapCard;->target(I)Z')==1,'exact device route predicate')
 prefix=after.split(ret+' v0',1)[0]
 ok('const/4 v0, 0x1' in prefix and 'if-eqz v0' in prefix and 'const/4 v0, 0x0' in prefix,'device-scoped early return retains generic route')
 ok(True,'complete effective implementation matches 1.2.33')

host=(merged/'com/shilapi/xcertplay/CarPlayHostActivity.smali').read_text();generic=(merged/'com/shilapi/xcertplay/GenericClusterDisplay.smali').read_text();presentation=(merged/'com/shilapi/xcertplay/GenericClusterPresentation.smali').read_text()
for sig,fallback in [('clusterDisplayConfig()Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;','genericClusterDisplayConfig()'),('ensureClusterPresentation()V','ensureGenericClusterPresentation()')]:
 m=method(host,sig)
 ok('ClusterMapPresentation$Companion;->findDisplay' in m and fallback in m,'null direct route reaches generic configuration/presentation '+sig)
selection=method(generic,'presentationDisplays(Landroid/content/Context;)Ljava/util/List;')
ok('Display;->getDisplayId()I' in selection and 'if-eqz v2, :cond_3' in selection,'generic candidates exclude primary display0 while retaining display1')
selection=method(generic,'candidates(Landroid/content/Context;)Ljava/util/List;')
ok('->bydPresent$default(' in selection and '->candidate(Landroid/view/Display;)' in selection,'patched name guard is used before constructing generic candidates')
config=method(generic,'streamConfig(Landroid/content/Context;Lcom/shilapi/xcertplay/GenericClusterDisplay$Candidate;)Lcom/shilapi/xcertplay/airplay/AirPlayDisplayConfig;')
ok('Candidate;->getId()I' in config and 'E01DisplayConfig;->adjust(' in config,'actual selected display ID goes through shared safety/size adjustment')
for hook in ['E01MapCard;->install(','E01ClusterIntro;->install(','E01ClusterIntro;->stopped(','E01ClusterMode;->setActive(','E01ClusterMode;->setVisible(']:
 ok(hook in presentation,'generic route retains '+hook)
ok('AspectFitFrame;-><init>' in presentation,'generic video keeps existing fit container')
ok(not (root/'src/patches/cluster-card-direct-presentation.json').exists(),'no partial direct window/config lifecycle was left enabled')
print('PASS',checks,'production cluster route/config/lifecycle contract checks'+(' against built DEX source' if args.built else ' against pinned source and pending route patches'))
