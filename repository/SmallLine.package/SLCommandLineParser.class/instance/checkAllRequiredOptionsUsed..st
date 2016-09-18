checking
checkAllRequiredOptionsUsed: slOptions
	(slOptions reject: #isOptional) isEmpty
		ifFalse: [ SLInvalidInput signal: 'All required options were not used.' ]