*connectors-notifications
connectedToEnd: oneOrTwo ofConnector: aConnector 
	"notification upon connection by a NCConnectorMorph.
	If either I or aConnector have a model, ensure that we both have a model and then notify my model."
	| gm |
	gm := self graphModel.
	gm
		ifNil: [aConnector graphModel
				ifNotNilDo: [:cm | self assuredGraphModel connectedToEnd: oneOrTwo ofEdge: cm]]
		ifNotNil: [gm connectedToEnd: oneOrTwo ofEdge: aConnector assuredGraphModel].
		

	self connectedToBy: aConnector