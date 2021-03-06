exclusion
createMutuallyExclusiveGroupWith: aSLElement
	(#(SLOption SLMutuallyExclusiveGroup) includes: aSLElement className)
		ifFalse: [ SLBadDescriptor signal: 'Can not use another object than a SLOption or a SLMutuallyExclusiveGroup with the operator ''|'' on a SLOption.' ].
			
	^ SLMutuallyExclusiveGroup new
		elements: { self . aSLElement } asOrderedCollection;
		yourself