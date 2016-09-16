visiting
visitSLOption: aSLOption
	aSLOption isShortOption
		ifTrue: [ 
			self parseShortOption: aSLOption.
			^ self ].
	aSLOption isLongOption
		ifTrue: [
			self parseLongOption: aSLOption.
			^ self ]