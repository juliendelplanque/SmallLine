visiting
visitSLUsagePattern: aSLUsagePattern
	| slOptions |
	self resetConfiguration.
	slOptions := aSLUsagePattern optionsAndOptionsGroups.
	otherElements := aSLUsagePattern notOptionsAndNotOptionsGroups readStream.
	
	[ otherElements atEnd or: [ cmdArgumentsStream atEnd ] ] 
		whileFalse: [ 
			slOptions
				detect: [ :option |
					[ 
						option accept: self.
						true
					] on: SLInvalidInput do: [ false ] ]
				ifFound: [ :found |
					slOptions remove: found ]
				ifNone: [ 
					otherElements peek accept: self ]
	].

	[ cmdArgumentsStream atEnd or: [ slOptions isEmpty ] ]
		whileFalse: [ 
			slOptions
				detect: [ :option |
					[ 
						option accept: self.
						true
					] on: SLInvalidInput do: [ false ] ]
				ifFound: [ :found |
					slOptions remove: found ]
				ifNone: [ 
					SLInvalidInput signal: 'Some required options are not used.' ] ].

	otherElements atEnd
		ifFalse: [ SLInvalidInput signal: 'There are not enough arguments provided.' ].
	(slOptions reject: #isOptional) isEmpty
		ifFalse: [ SLInvalidInput signal: 'All required options were not used.' ].
	cmdArgumentsStream atEnd
		ifFalse: [ SLInvalidInput signal: 'The pattern can not parse the arguments to the end.' ].
		
	self flag: #todo. "Verify that 2 arguments of an exclusive group do not appears together."