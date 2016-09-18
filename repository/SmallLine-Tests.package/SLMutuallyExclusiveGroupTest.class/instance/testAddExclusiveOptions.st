tests-exclusion
testAddExclusiveOptions
	| group option |
	group := SLMutuallyExclusiveGroup new.
	self assert: group elements isEmpty.
	
	option := 'hello' asOption.
	group := group | option.
	self
		assert: group elements size equals: 1;
		assert: group elements first equals: option