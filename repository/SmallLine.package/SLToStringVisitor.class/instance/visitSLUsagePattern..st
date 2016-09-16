visiting
visitSLUsagePattern: aSLUsagePattern
	aSLUsagePattern elements allButLast do: [ :element |
		element accept: self.
		self writeStream << Character space ].
	aSLUsagePattern elements last accept: self.