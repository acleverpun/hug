(cmd) ->
	handle = io.popen(cmd, 'r')
	output = handle\read('*all')
	handle\close()
	return output
