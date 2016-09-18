visiting
consumeArgumentStreamWithOptions: slOptions
	[ nonSlOptions atEnd or: [ cmdArgumentsStream atEnd ] ]
		whileFalse: [ 
			slOptions
				detect: [ :option | 
					[ option accept: self.
					true ]
						on: SLInvalidInput
						do: [ false ] ]
				ifFound: [ :found | slOptions remove: found ]
				ifNone: [ nonSlOptions peek accept: self ] ]