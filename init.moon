__dirname = (...)\match('(.-)[^%/%.]+$')

-- req = (file) -> require(__dirname .. file)
-- return (...) ->
-- __dirname = (...)\match('(.-)[^%/%.]+$')
-- 	(file) -> require(__dirname .. file)

utils = {
	display: req('display'),
	geo: req('geo'),
	structs: req('structs'),
	enum: req('enum'),
	loader: req('loader'),
	math: req('math'),
	queue: req('queue'),
}

utils.run = (cmd) ->
	handle = io.popen(cmd, 'r')
	output = handle\read('*all')
	handle\close()
	return output

return utils
