tests-visiting
testVisitSLUsagePattern1
	| args visitor |
	args := #('ship' 'new' 'Alexandria' 'Newton') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	pattern1 accept: visitor.
	
	self
		assert: visitor options isEmpty;
		assert: visitor positionalArguments size equals: 1;
		assertCollection: (visitor positionalArguments at: 'name') hasSameElements: #('Alexandria' 'Newton')