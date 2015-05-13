toolbar
openAncestors
	"Automatically opens ancestors. How many is configurable in the preferences.
	No layouting is done, the new morphs are simply placed beside the old one"
	
	| currentClass currentMorph |
	currentClass := klass ifNil: [ ^ self ].
	currentMorph := self.
	(self pasteUpMorphOrWorld class == SClassDiagram) ifTrue: [
		self class autoAncestorDepth timesRepeat: [ | newMorph |
			(currentClass := currentClass superclass) 
				ifNil: [ ^ self ]
				ifNotNil: [
					newMorph := self pasteUpMorphOrWorld
						openClassMorphFor: currentClass
						nextTo: currentMorph
						positionedBy: [ :target |
							target align: target topCenter with: currentMorph topCenter.
							target bottom: currentMorph top - self class classMorphPadding ].
					currentMorph openInheritanceConnectionsWith: newMorph.
					currentMorph := newMorph ] ] ].