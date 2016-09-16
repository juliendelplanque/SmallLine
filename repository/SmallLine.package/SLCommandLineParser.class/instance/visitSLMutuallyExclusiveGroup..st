visiting
visitSLMutuallyExclusiveGroup: aSLMutuallyExclusiveGroup
	aSLMutuallyExclusiveGroup elements 
		detect: [ :element | 
			[
				element accept: self.
				true
			] on: SLInvalidInput do: [ false ] ]
		ifNone: [ SLInvalidInput signal ]