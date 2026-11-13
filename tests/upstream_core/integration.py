"""Check that the built app uses the tested helpers on their intended paths."""
from pathlib import Path
import sys
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'tests/source_build'))
from contracts import assert_contract

def code(name):
    return assert_contract(name)

assert 'AudioPacketSize;->opusClockRate(J)I' in code('audio-rtp-format')
assert '->rtpClockRate:I' in code('audio-rtp-copy')
assert '->getRtpClockRate()I' in code('audio-rtp-timestamp')
assert code('audio-rtp-feedback').count('->getRtpClockRate()I') == 2
assert 'AudioInputPump;->acquire(' in code('audio-input-pump')
assert 'AudioPacketSize;->pcmFrameMillis(II)I' in code('microphone-packet-size')
s = code('bonjour-named-address')
assert s.index('BonjourAddress;->named(') < s.index('JmDNS;->create(')
s = code('wired-start-control')
assert s.index('->pollWiredStart(') < s.index('->recv(')
assert s.index('->wiredPollTimeout(') < s.index('->recv(')
assert s.index('->carPlayStartSession(') < s.index('->noteWiredStart()V')
s = code('wired-start-resend')
assert s.index('->isClosed()Z') < s.index('->canSendAgain()Z') < s.index('->send(') < s.index('->sentAgain()V')
assert 'WiredConfigurationPolicy;->shouldTransition(' in code('wired-mode-selection')
s = code('wired-mode-rejection')
assert '->REENUMERATION:' in s and '->closed:Z' in s and '->hasPermission(' in s
assert 'WiredConfigurationPolicy;->fallback(' in s and 'CarPlay configuration request transferred ' in s
assert 'WiredConfigurationPolicy;->started(' in code('wired-start-memory')
assert '->rememberWiredStart(' in code('wired-start-progress')
assert 'WiredStartRecovery;->sessionActive()V' in code('wired-start-active')
s = code('wired-start-incoming')
assert s.index('->observeIpv6([BII)V') < s.index('FileOutputStream;->write(')
assert 'WiredStartRecovery;->cancel()V' in code('wired-start-close')
s = code('speed-controller-close')
assert s.index('->closed:Z') < s.index('->cancelWiredStartup()V')
s = code('wired-out-status')
assert s.index('->writeTimeout(I)I') < s.index('->bulkWriteAll(') < s.index('->acceptedWrite()V')
# Existing hardware-specific ownership and audio routing still use their reviewed implementations.
for name in ('wired-tun-close', 'wired-configuration-retry', 'wired-shutdown-order',
             'e01-audio-0', 'e01-audio-1', 'audio-scene-navigation', 'audio-scene-pcm',
             'audio-scene-drain', 'navigation-audio-format-probe', 'wireless-audio-handoff'):
    code(name)
print('PASS assembled helper wiring, stop/active ownership, E01 USB cleanup and audio routing')
