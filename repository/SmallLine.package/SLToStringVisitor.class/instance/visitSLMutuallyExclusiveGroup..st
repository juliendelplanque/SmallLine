visiting
visitSLMutuallyExclusiveGroup: aSLMutuallyExclusiveGroup
	aSLMutuallyExclusiveGroup isOptional
		ifTrue: [ self writeStream << $[ ]
		ifFalse: [ self writeStream << $( ].
	
	aSLMutuallyExclusiveGroup elements allButLast do: [ :element |
		element accept: self.
		self writeStream << ' | ' ].
	aSLMutuallyExclusiveGroup elements last accept: self.
	
	aSLMutuallyExclusiveGroup isOptional
		ifTrue: [ self writeStream << $] ]
		ifFalse: [ self writeStream << $) ]. 