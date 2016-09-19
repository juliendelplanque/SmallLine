concatenation
concatenateWith: aSLElement
	^ SLUsagePattern new
		elements: { self . aSLElement } asOrderedCollection;
		yourself