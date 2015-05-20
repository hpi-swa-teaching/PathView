*connectors-connection
wantsAttachmentFromEnd: anEnd ofConnector: aConnector
	(owner notNil and: [ owner isObjectsTool ]) ifTrue: [ ^false ].
	^super wantsAttachmentFromEnd: anEnd ofConnector: aConnector