*connectors-visual properties
addOptionalButtonsTo: aCollection 
	aCollection
		addLast: (self transparentSpacerOfSize: 20 @ 3).
	aCollection
		addLast: (self
				buttonNamed: 'Button' translated
				action: #doButtonProperties
				color: color lighter
				help: 'open a button properties panel for the morph' translated).
	myTarget wantsTextPropertiesSheet
		ifTrue: [aCollection
				addLast: (self
						buttonNamed: 'Text' translated
						action: #doTextProperties
						color: color lighter
						help: 'open a text properties panel for the morph' translated)].
	myTarget wantsConnectorPropertiesSheet
		ifTrue: [aCollection
				addLast: (self
						buttonNamed: 'Connector' translated
						action: #doConnectorProperties
						color: color lighter
						help: 'open a Connector properties panel for the morph' translated)].
	^ aCollection