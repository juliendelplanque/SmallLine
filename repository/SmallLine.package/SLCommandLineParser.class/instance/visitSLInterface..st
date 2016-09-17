visiting
visitSLInterface: aSLInterface
	aSLInterface patterns
		detect: [ :pattern |
			[ 
				pattern accept: self.
				true 
			] on: SLInvalidInput do: [ false ] ]
		ifNone: [ SLInvalidInput signal: 'No usage pattern found for the input.' ]