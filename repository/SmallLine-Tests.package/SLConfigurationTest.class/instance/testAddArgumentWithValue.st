tests-positional arguments
testAddArgumentWithValue
	configuration addArgument: 'test' withValue: 'hello'.
	
	self
		assert: configuration positionalArguments size equals: 1;
		assert: (configuration positionalArguments at: 'test') equals: 'hello'.
	
	configuration addArgument: 'test' withValue: 'hi'.
	
	self
		assert: configuration positionalArguments size equals: 1;
		assert: (configuration positionalArguments at: 'test') size equals: 2;
		assertCollection: (configuration positionalArguments at: 'test') hasSameElements: { 'hello'. 'hi' }.
		
	configuration addArgument: 'test' withValue: 'ho'.
	
	self
		assert: configuration positionalArguments size equals: 1;
		assert: (configuration positionalArguments at: 'test') size equals: 3;
		assertCollection: (configuration positionalArguments at: 'test') hasSameElements: { 'hello'. 'hi'. 'ho' }