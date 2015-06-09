actions
fileOut
	| project |
	project := (SProject projectAt: version package name asSymbol).
	project ifNil: [Transcript show: 'No PathProject for ', version package name; cr. ^ self.].
	self
		fileOutTypeHarvest: project;
		fileOutDiagrams: project.
