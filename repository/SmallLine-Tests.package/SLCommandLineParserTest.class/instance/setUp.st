running
setUp
	pattern1 := 'ship' asCommand , 'new' asCommand , 'name' asArgument oneOrMore.
	pattern2 := 'ship' asCommand , 'name' asArgument , 'move' asCommand , 'x' asArgument , 'y' asArgument , ('speed' asOption withArgument  description: 'Speed in knots.').
	pattern3 := 'ship' asCommand , 'shoot' asCommand , 'x' asArgument , 'y' asArgument.
	pattern4 := 'mine' asCommand , 'set' asCommand , 'x' asArgument , 'y' asArgument , (('moored' asOption description: 'Moored (anchored) mine.') | ('drifting' asOption description: 'Drifting mine.')) optional.

	pattern5 := ($h asOption alias: 'help'; description: 'Show this screen.').

	pattern6 := ('version' asOption description: 'Show version.').
	
	interface := SLInterface new
					interfaceName: 'naval_fate';
					descriptionString: 'Naval fate.';
					patterns: { pattern1 . pattern2 . pattern3 . pattern4 . pattern5 . pattern6 };
					yourself.