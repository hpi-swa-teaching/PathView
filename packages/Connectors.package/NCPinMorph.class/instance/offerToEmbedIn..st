embeddings
offerToEmbedIn: targets 
	| selected choices labels |
	choices := OrderedCollection withAll: targets.
	labels := choices collect: [ :ea | ea externalName ].
	labels addFirst: '<do not embed>' translated.
	choices addFirst: nil.
	selected := (SelectionMenu
		labels: labels
		lines: {1}
		selections: choices) startUpWithCaption: 'Embed pin into...' translated.
	selected ifNotNil: [ selected addMorphFront: self ].
	Cursor normal show.