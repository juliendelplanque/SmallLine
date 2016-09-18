checking
checkArgumentStreamAtEnd
	cmdArgumentsStream atEnd
		ifFalse: [ SLInvalidInput
				signal: 'The pattern can not parse the arguments to the end.' ]