Caste = require('vendor/caste/lib/caste')
_ = req(..., 'lib.lodash')

-- TODO: freeze
class Enum extends Caste

	new: (values) =>
		if not _.isTable(values) then error 'Expected table.'

		@keys = {}
		@values = {}

		for key, value in pairs(values)
			@[key] = value
			@[value] = value
			_.push(@keys, key)
			_.push(@values, value)
