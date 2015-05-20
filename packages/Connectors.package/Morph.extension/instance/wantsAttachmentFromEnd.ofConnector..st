*connectors-connection
wantsAttachmentFromEnd: endIndex ofConnector: aConnector
	"Answer true if I would like the given end of aConnector attaching to me."
	"TODO: way too much policy in this one place!"

	owner ifNil: [ ^false ].	
	self == aConnector ifTrue: [ ^false ].
	self isConnectable ifFalse: [ ^false ].
	(self firstOwnerSuchThat: [ :m | m == aConnector ]) ifNotNil: [ ^false ].
	(self isConstrainedBy: aConnector) ifTrue: [ ^false ].
	self isPartsDonor ifTrue: [ ^false ].

	"Allow connection to submorphs when the SHIFT key is pressed, but only to top-level morphs"
	(ActiveHand lastEvent shiftPressed not
		and: [ self topRendererOrSelf owner isPlayfieldLike not ])
			ifTrue: [ ^false ].

	"Avoid connecting from a different World (WiW exception)"
	aConnector pasteUpMorphOrWorld ifNotNilDo: [ :itsWorld |
		(itsWorld isPartsBin not
			and: [ itsWorld ~= World
			and: [ self pasteUpMorphOrWorld ~~ itsWorld ]])
				ifTrue: [ ^false ]].

	^true
