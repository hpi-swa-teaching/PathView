instance creation
on: aTraceabilityOptions
	| tool |
	tool := self open.
	tool 
		options: aTraceabilityOptions;
		project: aTraceabilityOptions pathMap project;
		reloadUIData.
	^ tool