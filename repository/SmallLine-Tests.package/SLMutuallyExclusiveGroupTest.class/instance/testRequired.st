tests-api
testRequired
	| group result |
	group := SLMutuallyExclusiveGroup new.
	
	self assert: group isRequired.
	group optional.
	
	self deny: group isRequired.
	result := group required.
	
	self
		assert: result equals: group; "The method returns the object itself."
		assert: group isRequired