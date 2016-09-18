evaluation
evaluateOn: anArrayOfString
	| configuration |
	configuration := (self parse: anArrayOfString).
	configuration usagePattern actionBlock
		value: configuration positionalArguments
		value: configuration options