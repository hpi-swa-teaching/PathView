layout graph-based
openClassMorphFor: aClass nextTo: aPoint positionedBy: aBlock
	"Ensure, that a class-morph for aClass exists in the diagram. If not, open one and execute aBlock with it as parameter
	to position it correctly.
	Receiver will try to find existing morphs in the area of aPoint."
	
	| target |
	target := self classMorphFor: aClass nearestTo: aPoint.
	target ifNil: [
		target := SClassMorph on: aClass. 
		self addMorph: target.
		aBlock value: target ].
	^ target