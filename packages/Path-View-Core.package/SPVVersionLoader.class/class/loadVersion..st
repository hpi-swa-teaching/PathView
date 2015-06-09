as yet unclassified
loadVersion: aVersion
	| project |
	(project := SProject projectAt: aVersion package name asSymbol) ifNil: [^ self].
	self
		loadTypeHarvestIn: aVersion for: project;
		loadDiagramsIn: aVersion for: project.
