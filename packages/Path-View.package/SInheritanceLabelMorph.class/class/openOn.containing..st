instance creation
openOn: aConnector containing: aClassCollection
	
	^ (super openOn: aConnector)
		classCollection: aClassCollection;
		yourself