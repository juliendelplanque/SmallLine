accessing-computed
optionsAndOptionsGroups
	^ self elements select: [ :element |
			element isOption or: [ element isMutuallyExclusiveGroup ] ]