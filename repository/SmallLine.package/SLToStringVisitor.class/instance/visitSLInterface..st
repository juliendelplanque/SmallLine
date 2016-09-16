visiting
visitSLInterface: aSLInterface
	self writeStream
		<< aSLInterface descriptionString;
		<< Character lf;
		<< Character lf;
		<< 'Usage:';
		<< Character lf.
	
	aSLInterface patterns do: [ :element |
		self writeStream
			<< Character tab;
			<< aSLInterface interfaceName;
			<< Character space.
		element accept: self.
		self writeStream << Character lf ].
	
	self writeStream
		<< Character lf;
		<< 'Options:';
		<< Character lf.
	
	aSLInterface allOptions do: [ :option |
		self writeStream
			<< Character tab.
		option accept: self.
		option aliases do: [ :alias |
			self writeStream << Character space.
			alias size = 1
				ifTrue: [ 
					self writeStream 
						<< $-;
						<< alias ]
				ifFalse: [ 
					self writeStream 
						<< '--';
						<< alias ] ].
		self writeStream
			<< Character space;
			<< option description;
			<< Character lf ]