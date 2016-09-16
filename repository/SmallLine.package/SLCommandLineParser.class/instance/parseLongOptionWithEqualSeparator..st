visiting
parseLongOptionWithEqualSeparator: aSLOption
	((cmdArgumentsStream peek beginsWith: '--') and: [ cmdArgumentsStream peek includes: $= ])
		ifTrue: [ 
			| optionName optionArg |
			optionName := (cmdArgumentsStream peek splitOn: $=) first allButFirst: 2.
			aSLOption optionName = optionName
				ifFalse: [ SLInvalidInput signal ].
			optionArg := (cmdArgumentsStream peek splitOn: $=) allButFirst joinUsing: ''.
			self
				addOption: aSLOption optionName
				withValue: optionArg.
			cmdArgumentsStream next ]
		ifFalse: [
			SLInvalidInput signal ]