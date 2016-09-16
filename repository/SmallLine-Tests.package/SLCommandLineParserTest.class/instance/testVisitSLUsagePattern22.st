tests-visiting
testVisitSLUsagePattern22
	| args visitor |
	args := #('ship' 'Newton' 'move' '14' '--speed' '15' '21') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	pattern2 accept: visitor.
	
	self
		assert: visitor options size equals: 1;
		assert: (visitor options at: 'speed') equals: '15';
		assert: visitor positionalArguments size equals: 3;
		assert: (visitor positionalArguments at: 'name') equals: 'Newton';
		assert: (visitor positionalArguments at: 'x') equals: '14';
		assert: (visitor positionalArguments at: 'y') equals: '21'