checking
checkAllElementsEaten: nonSlOptionsStream
	nonSlOptionsStream atEnd
		ifFalse: [ SLInvalidInput signal: 'There are not enough arguments provided.' ]