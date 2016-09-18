api
| aSLElement
	aSLElement class = self class
		ifFalse: [
			(aSLElement class = elements anyOne class)
				ifFalse: [ SLBadDescriptor signal: 'Can not apply ''|'' operator with an object that is not the same kind of element as me.' ] ].

	elements add: aSLElement.
	^ self