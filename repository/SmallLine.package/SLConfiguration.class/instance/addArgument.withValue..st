positional arguments
addArgument: anArgument withValue: aValue
	(positionalArguments includesKey: anArgument)
		ifFalse: [ 
			positionalArguments at: anArgument put: aValue.
			^ self ].
	
	(positionalArguments at: anArgument) class = OrderedCollection
		ifTrue: [ 
			(positionalArguments at: anArgument) add: aValue.
			^ self ].
	
		positionalArguments
			at: anArgument
			put: (OrderedCollection
						with: (positionalArguments at: anArgument)
						with: aValue)