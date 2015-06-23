testing
testDiagramNeedsExtension
	"a morph is dropped at different positions inside/ overlapping a class diagram"

	| bounds |
	bounds := instance bounds.

	self assert: [ (instance diagramNeedsExtensionFor: (self buildMorphAt: bounds topRight - (100@0))) = false ].
	self assert: [ (instance diagramNeedsExtensionFor: (self buildMorphAt: bounds center)) = false ].

	self assert: [ (instance diagramNeedsExtensionFor: (self buildMorphAt: bounds topLeft - (50@0))) ]. 
	self assert: [ instance diagramNeedsExtensionFor: (self buildMorphAt: bounds bottomLeft) ].
	self assert: [ instance diagramNeedsExtensionFor: (self buildMorphAt: bounds bottomRight) ].
	self assert: [ instance diagramNeedsExtensionFor: (self buildMorphAt: bounds topRight) ].
	self assert: [ instance diagramNeedsExtensionFor: (self buildMorphAt: bounds topLeft - (0@1)) ].