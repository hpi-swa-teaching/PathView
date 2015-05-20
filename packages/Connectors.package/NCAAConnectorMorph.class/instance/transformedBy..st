rotate scale and flex
transformedBy: aTransform
	"Since I don't really add a flex shell, just behave like a PolygonMorph"
	line transformedBy: aTransform.
	"constraints do: [ :ea | ea transformedBy: aTransform ]."
	^self.