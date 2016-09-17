parsing
parse: anArrayOfString
	| parser |
	anArrayOfString first = self interfaceName
		ifFalse: [ SLInvalidInput signal: 'Wrong program name.' ].
	parser := SLCommandLineParser new
					cmdArguments: anArrayOfString allButFirst;
					yourself.
	self accept: parser.
	^ parser configuration
					