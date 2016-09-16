testing
onlyContains: aClass
	"Test if all my elements' classes are aClass."
	^ self elements
		inject: true
		into: [ :bool :element |
			bool and: [ 
				element class = SLMutuallyExclusiveGroup
					ifTrue: [ element onlyContains: aClass ]
					ifFalse: [ element class = aClass ] ] ]