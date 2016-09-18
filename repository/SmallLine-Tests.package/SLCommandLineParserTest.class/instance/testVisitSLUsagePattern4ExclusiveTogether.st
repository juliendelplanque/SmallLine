tests-visiting
testVisitSLUsagePattern4ExclusiveTogether
	| args visitor |
	args := #('mine' 'set' '18' '25' '--moored' '--driting') readStream.
	visitor := SLCommandLineParser new
				cmdArguments: args;
				yourself.
	self should: [ pattern4 accept: visitor ] raise: SLInvalidInput