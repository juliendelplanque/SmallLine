tests-api
testOptional
	| group result |
	group := SLOptionalOrRequiredElement new.
	
	self deny: group isOptional.
	result := group optional.
	
	self
		assert: result equals: group; "The method returns the object itself."
		assert: group isOptional