visiting
parseLongOption: aSLOption
	cmdArgumentsStream peek = ('--',aSLOption optionName)
		ifTrue: [ 
			self parseLongOptionWithSpaceSeparator: aSLOption ]
		ifFalse: [
			self parseLongOptionWithEqualSeparator: aSLOption ]