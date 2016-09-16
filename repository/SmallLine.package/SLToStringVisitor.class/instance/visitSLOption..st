visiting
visitSLOption: aSLOption
	aSLOption isShortOption
		ifTrue: [ self writeStream << $- ]
		ifFalse: [ self writeStream << '--' ].
	
	self writeStream << aSLOption optionName.
	
	aSLOption hasArgument
		ifTrue: [ 
			aSLOption isShortOption
				ifTrue: [ 
					self writeStream
						<< Character space;
						<< $<;
						<< aSLOption argumentName;
						<< $> ]
				ifFalse: [ 
					self writeStream
						<< $=;
						<< $<;
						<< aSLOption argumentName;
						<< $> ] ]