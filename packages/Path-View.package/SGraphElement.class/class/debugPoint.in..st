debugging
debugPoint: aPoint in: aMorph
	"Add a small, transient rectangle centered around aPoint. The rectangle will disappear the next time the graph will be layed out."
	
	| newMorph |
	newMorph :=
		(SDebugRectangleMorph new
			extent: 20 asPoint;
			center: aPoint;
			color: Color random;
			yourself).
	(aMorph ownerThatIsA: SClassDiagram)
		addMorph: newMorph.
	^ newMorph