instance creation
openOn: aConnector
	
	| instance |
	instance := self new.
	instance
		align: instance center with: aConnector position;
		attachUnobnoxiouslyTo: aConnector at: aConnector center;
		connector: aConnector.  
	aConnector pasteUpMorphOrWorld addMorphFront: instance. "To make the label grabbable. Morph must delete the label!"
	aConnector label: instance.
	^ instance