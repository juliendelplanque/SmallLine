visiting
parseShortOption: aSLOption
	cmdArgumentsStream peek = ('-',aSLOption optionName)
		ifTrue: [ 
			cmdArgumentsStream next.
			aSLOption hasArgument
				ifTrue: [ 
					self
						addOption: aSLOption optionName
						withValue: cmdArgumentsStream next ]
				ifFalse: [ 
					self
						addOption: aSLOption optionName
						withValue: true ] ]
		ifFalse: [ SLInvalidInput signal ]