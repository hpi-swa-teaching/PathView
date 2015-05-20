*connectors-copying
duplicateForEmbedding
	"This is sent to (for instance) the prototype in a NCMakerButton.
	I'm not calling duplicate here (though asButtonPrototype calls duplicate) to save time;
	the resulting object is a sibling."

	^self usableSiblingInstance2 restoreSuspendedEventHandler; isPartsDonor: false; yourself
