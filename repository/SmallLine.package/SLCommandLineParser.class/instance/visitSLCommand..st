visiting
visitSLCommand: aSLCommand
	cmdArgumentsStream peek = aSLCommand commandName
		ifTrue: [ 
			cmdArgumentsStream next.
			otherElements next ]
		ifFalse: [ SLInvalidInput signal ]