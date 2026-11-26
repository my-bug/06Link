import sys
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts' / 'validation'))
import surface_cadence as cadence


class SurfaceCadenceTest(unittest.TestCase):
    def test_layer_and_pending_markers(self):
        name = 'SurfaceView[com.sixlink.car/com.shilapi.xcertplay.CarPlayHostActivity]#14'
        self.assertEqual(cadence.select_layer(['Wallpaper', name], None), name)
        for requested in [name, None]:
            with self.assertRaises(ValueError):
                cadence.select_layer([name, name], requested)
        page = f'16666666\n1 2 3\n4 2 5\n0 0 0\n1 {cadence.PENDING} 4\n'
        self.assertEqual(cadence.present_times(page), {2})
        with self.assertRaises(ValueError):
            cadence.present_times(page + '16666666\n')
        with self.assertRaises(ValueError):
            cadence.present_times('16666666\n0 0 0\n\n1 2 3\n')

    @patch('surface_cadence.time.sleep')
    def test_prior_and_repeated_pages(self, _sleep):
        layer = 'SurfaceView'
        baseline = 500_000_000_000
        step = 50_000_000
        pages = iter([[0], [0], [0, 1, 2], list(range(1, 100)),
                      list(range(95, 180)), list(range(170, 203))])

        def dump(*arguments):
            if arguments == ('--list',):
                return layer
            self.assertEqual(arguments, ('--latency', layer))
            return '16666666\n' + ''.join(f'1 {baseline + i * step} 1\n' for i in next(pages))

        result = cadence.capture(dump, layer)
        self.assertIn('200 帧', result)
        self.assertIn('超过 50 毫秒共 0 次', result)


if __name__ == '__main__':
    unittest.main()
