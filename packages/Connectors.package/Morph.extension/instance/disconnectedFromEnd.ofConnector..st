*connectors-notifications
disconnectedFromEnd: oneOrTwo ofConnector: aConnector
	"notification upon disconnection by a NCConnectorMorph.
	If either I or aConnector have a model, ensure that we both have a model and then notify my model."

	| gm |
	gm := self graphModel.
	gm
		ifNil: [aConnector graphModel
				ifNotNilDo: [:cm | self assuredGraphModel disconnectedFromEnd: oneOrTwo ofEdge: cm]]
		ifNotNil: [ gm disconnectedFromEnd: oneOrTwo ofEdge: aConnector assuredGraphModel].

	self disconnectedFromBy: aConnector.