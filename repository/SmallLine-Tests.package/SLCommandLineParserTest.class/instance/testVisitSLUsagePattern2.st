tests-visiting
testVisitSLUsagePattern2
	| args visitor |
	args := #('ship' 'Alexandria' 'move' '--speed=15' '14' '21') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	pattern2 accept: visitor.
	
	self
		assert: visitor options size equals: 1;
		assert: (visitor options at: 'speed') equals: '15';
		assert: visitor positionalArguments size equals: 3;
		assert: (visitor positionalArguments at: 'name') equals: 'Alexandria';
		assert: (visitor positionalArguments at: 'x') equals: '14';
		assert: (visitor positionalArguments at: 'y') equals: '21'