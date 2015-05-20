initialization
spec
	self center = self originalPosition ifTrue: [ ^originalSpec ].
	target defaultAttachmentPointSpecs do: [ :spec | 
		self center = (target perform: spec first withArguments: spec allButFirst) asIntegerPoint
			ifTrue: [ ^spec ].
	].
	^{ #pointAtOffset: . (((target globalPointToLocal: self center) - target position) / target extent) asFloatPoint }.
