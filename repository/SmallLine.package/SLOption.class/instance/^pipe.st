mutual exclusion
| aSLElement
	(#(SLOption SLMutuallyExclusiveGroup) includes: aSLElement className)
		ifFalse: [ SLBadDescriptor signal: 'Can not use another object than a SLOption or a SLMutuallyExclusiveGroup with the operator ''|'' on a SLOption.' ].
		
	aSLElement class = SLMutuallyExclusiveGroup
		ifTrue: [ 
			aSLElement onlyContainsOptions
				ifFalse: [ SLBadDescriptor signal: 'Can not use a SLMutuallyExclusiveGroup that includes other elements than SLOptions with the operator ''|'' on a SLOption.' ] ].
			
	^ SLMutuallyExclusiveGroup new
		elements: { self . aSLElement } asOrderedCollection;
		yourself