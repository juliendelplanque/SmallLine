api
allOptions
	| collector |
	collector := SLOptionsCollector new.
	self accept: collector.
	^ collector options