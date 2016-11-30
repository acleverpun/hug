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

__dirname = ...
dirParts = split(dots(__dirname), '%.')

export req = (path, file) ->
	pathParts = split(dots(path), '%.')
	fileParts = split(dots(file), '%.')

	dir = __dirname
	if path != dir
		parts = {}
		for p, part in pairs(pathParts)
			if not dirParts[p] and part == fileParts[p - #dirParts] then break
			table.insert(parts, part)
		dir = table.concat(parts, '.')

	require(dir .. '.' .. file)

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
