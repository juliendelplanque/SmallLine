tests-visiting
testVisitSLUsagePattern6
	| args visitor |
	args := #('--version') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	pattern6 accept: visitor.
	
	self
		assert: visitor options size equals: 1;
		assert: (visitor options at: 'version');
		assert: visitor positionalArguments isEmpty