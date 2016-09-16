tests-visiting
testVisitSLUsagePattern42
	| args visitor |
	args := #('mine' 'set' '18' '25' '--drifting') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	pattern4 accept: visitor.
	
	self
		assert: visitor options size equals: 1;
		assert: (visitor options at: 'drifting') equals: true;
		assert: visitor positionalArguments size equals: 2;
		assert: (visitor positionalArguments at: 'x') equals: '18';
		assert: (visitor positionalArguments at: 'y') equals: '25'