object fileIn
convertToCurrentVersion: varDict refStream: smartRefStrm 
	lineAttachmentPoint ifNil: [
		lineAttachmentPoint := (self valueOfProperty: #lineAttachmentPoint ifAbsent: [ 0@0 ]).
		self removeProperty: #lineAttachmentPoint.
	].
	^super convertToCurrentVersion: varDict refStream: smartRefStrm
