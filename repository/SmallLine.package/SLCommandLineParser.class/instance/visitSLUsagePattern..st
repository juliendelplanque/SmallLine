visiting
visitSLUsagePattern: aSLUsagePattern
	| slOptions |
	self resetConfiguration.
	slOptions := aSLUsagePattern optionsAndOptionsGroups.
	nonSlOptions := aSLUsagePattern notOptionsAndNotOptionsGroups
		readStream.
	self
		consumeArgumentStreamWithOptions: slOptions;
		consumeOptionsLeft: slOptions;
		checkAllElementsEaten: nonSlOptions;
		checkAllRequiredOptionsUsed: slOptions;
		checkArgumentStreamAtEnd;
		currentUsagePattern: aSLUsagePattern