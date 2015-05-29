as yet unclassified
mergeVersion: aVersion
	| project |
	(project := SProject projectAt: aVersion package name asSymbol) ifNil: [^ self].
	self
		mergeTypeHarvestIn: aVersion for: project;
		mergeDiagramsIn: aVersion for: project.
