accessing-computed
notOptionsAndNotOptionsGroups
	^ self elements reject: [ :element |
						element isOption or: [ 
							(element isMutuallyExclusiveGroup
								and: [ element onlyContainsOptions ]) ] ]