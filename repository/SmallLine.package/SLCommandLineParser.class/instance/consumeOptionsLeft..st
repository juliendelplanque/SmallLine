visiting
consumeOptionsLeft: slOptions
	[ cmdArgumentsStream atEnd or: [ slOptions isEmpty ] ]
		whileFalse: [ 
			slOptions
				detect: [ :option | 
					[ option accept: self.
					true ]
						on: SLInvalidInput
						do: [ false ] ]
				ifFound: [ :found | slOptions remove: found ]
				ifNone: [ SLInvalidInput signal: 'Some required options are not used.' ] ]