visiting
visitSLInterface: aSLInterface
	aSLInterface patterns do: [ :element | element accept: self ]