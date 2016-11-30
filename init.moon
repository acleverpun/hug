{ :gsub, :split } = require('std.string')

export req = (path, file) ->
	pathParts = split(gsub(path, '/', '.'), '%.')
	firstFilePart = split(gsub(file, '/', '.'), '%.')[1]
	dir = ''
	for part in *pathParts
		if part == firstFilePart then break
		dir ..= "#{part}."
	require(dir .. file)

{
	_: req(..., 'lib.lodash'),
	display: req(..., 'lib.display'),
	Enum: req(..., 'lib.enum'),
	geo: req(..., 'lib.geo'),
	Loader: req(..., 'lib.loader'),
	math: req(..., 'lib.math'),
	Queue: req(..., 'lib.queue'),
	run: req(..., 'lib.run'),
}
