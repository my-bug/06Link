import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from test_support import find_java


class WirelessMusicGapTest(unittest.TestCase):
    def test_playback(self):
        java = find_java()['java_home'] / 'bin'
        with tempfile.TemporaryDirectory() as work:
            subprocess.run([str(java / 'javac'), '--release', '8', '-d', work,
                            str(ROOT / 'src/e01/com/shilapi/xcertplay/media/WirelessMusicGap.java'),
                            str(ROOT / 'tests/audio_scene/WirelessMusicGapCheck.java')], check=True)
            subprocess.run([str(java / 'java'), '-cp', work,
                            'com.shilapi.xcertplay.media.WirelessMusicGapCheck'], check=True)

    def test_transport_and_track_boundaries(self):
        core = ROOT / 'src/core/smali/classes/com/shilapi/xcertplay'
        host = (core / 'CarPlayHostActivity.smali').read_text()
        binding = host[host.index('    invoke-direct {v1, v2, v3, v4, v6}'):][:1700]
        self.assertLess(binding.index('->getTransport()'), binding.index('->setAudioTransport('))
        sink = (core / 'media/AndroidMediaSink.smali').read_text()
        self.assertIn('->WIRELESS:', sink[sink.index('    :goto_2', sink.index('declared-synchronized audioRenderer(')):sink.index('->enableWirelessMusicFill()')])
        renderer = (core / 'media/AudioRenderer.smali').read_text()
        eligibility = renderer[renderer.index('.method public final enableWirelessMusicFill()'):]
        for check in ('"media"', '->AAC_LC:', '->getRtpClockRate()'):
            self.assertIn(check, eligibility)
        write = renderer[renderer.index('.method private final writeMusicGap('):].split('.end method', 1)[0]
        for guard in ('playbackStarted:Z', 'startThresholdBytes:I', '->underranSinceStart(', '->queuedBytes(', '->hasRoom('):
            self.assertLess(write.index(guard), write.index('->silence(I)'))
        self.assertLess(eligibility.index('if-lt v0, v1, :cond_0'), eligibility.index('->getAudioType()'))
        self.assertIn('Landroid/os/Build$VERSION;->SDK_INT:I', eligibility)
        self.assertIn('const/16 v1, 0x15', eligibility)
        self.assertNotIn('Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I', renderer)
        self.assertEqual(write.count('AudioTrackApi21;->writeNonBlocking('), 1)
        api21 = (ROOT / 'src/e01/com/shilapi/xcertplay/media/AudioTrackApi21.java').read_text()
        self.assertIn('track.write(data, bytes, AudioTrack.WRITE_NON_BLOCKING)', api21)
        self.assertNotIn('writeBlocking', write)
        self.assertIn('->recordPcmWrite(I)V', write)
        self.assertIn('->presentationTimeUs:J', renderer)
        self.assertIn('->reset()V', renderer[renderer.index('.method private final maintainPlaybackBuffer()'):renderer.index('.method private final mappedSelection()')])


if __name__ == '__main__':
    unittest.main()
