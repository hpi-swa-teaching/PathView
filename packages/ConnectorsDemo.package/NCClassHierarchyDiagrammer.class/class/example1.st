examples
example1
	"NCClassHierarchyDiagrammer example1"
	| diagrammer pum layouter |
	pum := PasteUpMorph new.
	pum assuredGraphContext; extent: 600@600; openInWorld.
	diagrammer := self newOn: pum.
	diagrammer drawClassCategory: 'ConnectorsShapes'.
	diagrammer drawClassCategory: 'ConnectorsGraphModel'.
	layouter := NCSimulatedAnnealingGraphLayoutAlgorithm new.
	pum addMorph: ((NCUpdatingNumericStringMorph on: layouter selector: #temperature)
		decimalPlaces: 3;
		position: 10@10;
		yourself).
	layouter layoutMorph: pum.