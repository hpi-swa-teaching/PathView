layout and labels
extendDiagram 
	"expend the diagram if the class morph of the current diagram element exceed its bounds"

	| diagram |

	self hasDiagramParent ifTrue: [
		diagram := self diagramParent.
		(diagram diagramNeedsExtensionFor: self classMorph) ifTrue: [
			diagram extendDiagramFor: self classMorph ]]