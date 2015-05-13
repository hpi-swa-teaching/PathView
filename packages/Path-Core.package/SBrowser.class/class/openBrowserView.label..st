instance creation
openBrowserView: aBrowserView label: aString 
	"Schedule aBrowserView, labeling the view aString."
	| morph |
	(aBrowserView isKindOf: ToolBuilderSpec) ifTrue:[
		morph := ToolBuilder open: aBrowserView label: aString.
		morph extent: self defaultExtent.
	] ifFalse:[
		aBrowserView isMorph
			ifTrue:  [(aBrowserView setLabel: aString) openInWorld]
			ifFalse: [aBrowserView label: aString.
					aBrowserView minimumSize: 300 @ 200.
					aBrowserView subViews do: [:each | each controller].
					aBrowserView controller open].
	].
	"Dependency required for label control within source code"
	(aBrowserView model dependents 
		detect: [:each | each isKindOf: SPluggableTextMorphPlus] ifNone: [nil])
		ifNotNil: [:each | 	each textMorph addDependent: aBrowserView model].
	aBrowserView model class = self
		ifTrue: [aBrowserView model refreshAdditionalLists].
	^ aBrowserView model
