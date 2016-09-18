exclusion
addExclusiveOptions: aSLOption
	(aSLOption isKindOf: SLOption)
		ifFalse: [
			SLBadDescriptor signal: 'Can not apply ''|'' operator with an object that is not kind of SLOption.' ].

	elements add: aSLOption