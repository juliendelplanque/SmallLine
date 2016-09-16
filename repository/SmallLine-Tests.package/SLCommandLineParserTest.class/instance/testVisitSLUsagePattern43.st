tests-visiting
testVisitSLUsagePattern43
	| args visitor |
	args := #('mine' 'set' '18' '25') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	pattern4 accept: visitor.
	
	self
		assert: visitor options size equals: 0;
		assert: visitor positionalArguments size equals: 2;
		assert: (visitor positionalArguments at: 'x') equals: '18';
		assert: (visitor positionalArguments at: 'y') equals: '25'