layout graph-based
openClassMorphs: collectionOfClasses at: aCommonPosition
	"Open one class-morph for each class in collectionOfClasses at aCommonPosition."
	
	^ collectionOfClasses collect: [ :class |
		self
			openClassMorphFor: class
			nextTo: aCommonPosition
			positionedBy: [ :morph | morph position: aCommonPosition ] ]