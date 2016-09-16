visiting
visitSLPositionalArgument: aSLArgument
	self writeStream
		<< $<
		<< aSLArgument argumentName;
		<< $>.
	
	aSLArgument hasOneOrMoreArgument
		ifTrue: [ self writeStream << '...' ]