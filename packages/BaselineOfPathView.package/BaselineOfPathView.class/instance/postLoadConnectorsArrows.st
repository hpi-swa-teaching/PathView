baseline
postLoadConnectorsArrows

	(Smalltalk at: #NCAAConnectorMorph) withAllSubclassesDo: [ :cl | cl initializeArrowDictionary ].
	(Smalltalk
		at: #SConnector
		ifAbsent: [Smalltalk
					at: #SClassConnector
					ifAbsent: [^ self]]) withAllSubclassesDo: [:class | class initialize].