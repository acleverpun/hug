dots = (value) -> string.gsub(value, '/', '.')

split = (value, delimiter) ->
	result = {}
	fromIndex = 1
	delimFrom, delimTo = string.find(value, delimiter, fromIndex)
	while delimFrom
		table.insert(result, string.sub(value, fromIndex , delimFrom - 1))
		fromIndex = delimTo + 1
		delimFrom, delimTo = string.find(value, delimiter, fromIndex)
	table.insert(result, string.sub(value, fromIndex))
	return result

export req = (path, file) ->
	pathParts = split(dots(path), '%.')
	firstFilePart = split(dots(file), '%.')[1]
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
