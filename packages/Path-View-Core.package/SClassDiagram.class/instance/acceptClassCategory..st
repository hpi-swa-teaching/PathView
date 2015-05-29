layout graph-based
acceptClassCategory: aMorph
	
	^ (aMorph passenger isKindOf: OBClassCategoryNode)
		ifTrue: [ | classes |
			classes := aMorph passenger classes collect: #theClass.
			self addClasses: classes.
			self class numberOfRandomAutoOpenedMethods
				timesRepeat: [ | class assoc color |
					color := Color random.
					class := classes atRandom.
					assoc := class -> class methodDict keys atRandom.
					(self addMethod: assoc) color: color.
					(self morphForMethod: assoc)
						pin;
						setColorIcon: color blacker blacker blacker;
						highlightedColor: color ].
			self
				expandAndToggleLabels;
				layoutGraphForked ]