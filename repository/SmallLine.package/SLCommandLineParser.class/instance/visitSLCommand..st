visiting
visitSLCommand: aSLCommand
	cmdArgumentsStream peek = aSLCommand commandName
		ifTrue: [ 
			cmdArgumentsStream next.
			nonSlOptions next ]
		ifFalse: [ SLInvalidInput signal ]