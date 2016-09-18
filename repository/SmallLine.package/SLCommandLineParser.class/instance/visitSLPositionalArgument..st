visiting
visitSLPositionalArgument: aSLArgument
	self
		addArgument: aSLArgument argumentName
		withValue: cmdArgumentsStream next.
	
	(aSLArgument hasOneOrMoreArgument and: [ cmdArgumentsStream atEnd not ])
		ifFalse: [ nonSlOptions next ]