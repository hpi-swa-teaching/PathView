*connectorsShapes-flaps
quadsDefiningConnectorsFlap
	"Answer a structure defining the items on the default Connectors flap"

	^ #(
	(NCLabelMorph newStandAlone 'Label' 'A label')
	(NCSmartLabelMorph newStandAlone 'Smart Label' 'A label that positions itself')
	(NCAAConnectorMorph	newStandAlone		'Connector'	'A basic connector')
	(NCAAConnectorMorph	newWithArrow 'ConnectorArrow'	'A basic connector with an arrowhead')
	(NCAAConnectorMorph	newCurvyConnector 'Curvy Connector'	'A basic curved connector')
	(NCAAConnectorMorph	newCurvyArrow 'Curvy Arrow'	'A basic curved connector with an arrowhead')
	(NCGrabbableDisplayTextMorph authoringPrototype 'Title' 'Display text that you can move')
	(NCTextRectangleMorph new 'Text Rectangle' 'A rectangle with text, or a button')
	(NCButtonBar newStandAlone 'ButtonBar' 'A buttonBar for customizing')
	(NCMakerButton newStandAlone 'Maker Button' 'A handy Morph-generating button')
	(NCBasicShapeMorph newStandAlone 'Basic Shape' 'A simple shape with a context menu')
	(Flaps newNCPartsBinFlap 'New Button Flap' 'A new connector flap')
	(NCAttachmentPointAdjusterWindow newStandAlone 'AP Adjuster' 'This lets you adjust the attachment points on a dropped Morph')
	)
