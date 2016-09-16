positional arguments
addArgument: anArgument withValue: aValue
	positionalArguments
		at: anArgument
		ifPresent: [ 
			(positionalArguments at: anArgument) class = OrderedCollection
				ifTrue: [ (positionalArguments at: anArgument) add: aValue ]
				ifFalse: [ 
					positionalArguments
						at: anArgument
						put: (OrderedCollection
									with: (positionalArguments at: anArgument)
									with: aValue) ] ]
		ifAbsent: [ positionalArguments at: anArgument put: aValue ]