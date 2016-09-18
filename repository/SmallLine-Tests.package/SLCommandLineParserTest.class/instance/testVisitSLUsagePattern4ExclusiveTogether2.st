tests-visiting
testVisitSLUsagePattern4ExclusiveTogether2
	| args visitor |
	args := #('mine' 'set' '--moored' '18' '25' '--driting') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	self should: [ pattern4 accept: visitor ] raise: SLInvalidInput