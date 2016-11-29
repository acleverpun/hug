-- __dirname = (...)\match('(.-)[^%/%.]+$')
-- __dirname = ... and (...)\match('(.-%.?)[^%.]+$') or ''
__dirname = ...
export req = (file) -> require(__dirname .. '.' .. file)

{
	_: req('lib.lodash'),
	display: req('lib.display'),
	Enum: req('lib.enum'),
	geo: req('lib.geo'),
	Loader: req('lib.loader'),
	math: req('lib.math'),
	Queue: req('lib.queue'),
	run: req('lib.run'),
}
