tests-options
testAddOptionWithValue
	configuration addOption: '--test' withValue: 'test'.
	
	self
		assert: configuration options size equals: 1;
		assert: (configuration options at: '--test') equals: 'test'