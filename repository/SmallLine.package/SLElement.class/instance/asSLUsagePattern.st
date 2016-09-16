converting
asSLUsagePattern
	^ SLUsagePattern new
		elements: { self } asOrderedCollection;
		yourself