tests-visiting
testVisitSLUsagePattern5
	| args visitor |
	args := #('-h') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	pattern5 accept: visitor.
	
	self
		assert: visitor options size equals: 1;
		assert: (visitor options at: 'h');
		assert: visitor positionalArguments isEmpty