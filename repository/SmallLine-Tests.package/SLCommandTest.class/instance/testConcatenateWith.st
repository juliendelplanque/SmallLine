tests-concatenation
testConcatenateWith
	| command usage1 usage2 |
	command := 'cmd' asCommand.
	usage1 := command , 'hello' asCommand.
	self
		assert: usage1 class equals: SLUsagePattern;
		assert: usage1 elements first equals: command;
		assert: usage1 elements last class equals: SLCommand;
		assert: usage1 elements last commandName equals: 'hello'.
	
	usage2 := command , 'opt' asOption.
	self
		assert: usage2 class equals: SLUsagePattern;
		assert: usage2 elements first equals: command;
		assert: usage2 elements last class equals: SLOption;
		assert: usage2 elements last optionName equals: 'opt'.