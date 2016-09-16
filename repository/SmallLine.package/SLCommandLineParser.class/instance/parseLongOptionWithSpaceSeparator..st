visiting
parseLongOptionWithSpaceSeparator: aSLOption
	cmdArgumentsStream next.
	aSLOption hasArgument
		ifTrue: [ 
			self
				addOption: aSLOption optionName
				withValue: cmdArgumentsStream next ]
		ifFalse: [ 
			self
				addOption: aSLOption optionName
				withValue: true ]