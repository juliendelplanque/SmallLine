tests-visiting
testVisitSLUsagePattern3
	| args visitor |
	args := #('ship' 'shoot' '15' '42') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	pattern3 accept: visitor.
	
	self
		assert: visitor options isEmpty;
		assert: visitor positionalArguments size equals: 2;
		assert: (visitor positionalArguments at: 'x') equals: '15';
		assert: (visitor positionalArguments at: 'y') equals: '42'