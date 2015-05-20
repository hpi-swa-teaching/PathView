accessing
drawingElement
	"Answer the drawing element that I constrain, typically either a Connector or a label"
	^constrained ifNotNilDo: [ :c | c owner ]