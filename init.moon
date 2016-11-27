-- __dirname = (...)\match('(.-)[^%/%.]+$')
__dirname = ... and (...)\match '(.-%.?)[^%.]+$' or ''

-- return (...) ->
-- __dirname = (...)\match('(.-)[^%/%.]+$')
-- 	(file) -> require(__dirname .. file)
req = (file) -> require(__dirname .. file)

utils = {
	display: req('display'),
	enum: req('enum'),
	geo: req('geo'),
	loader: req('loader'),
	math: req('math'),
	queue: req('queue'),
	run: req('run'),
	structs: req('structs'),
}

return utils
