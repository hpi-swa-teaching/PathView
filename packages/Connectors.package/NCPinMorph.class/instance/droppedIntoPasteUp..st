submorphs-accessing
droppedIntoPasteUp: aMorph
	| targets |
	targets := (aMorph rootMorphsAt: self center) reject: [ :ea | ea isPinMorph ].
	targets size < 1 ifTrue: [ ^self ].
	WorldState addDeferredUIMessage: [ self offerToEmbedIn: targets ].
