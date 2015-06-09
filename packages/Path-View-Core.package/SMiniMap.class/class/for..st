instance creation
for: aScrollPane
	"This constructor assumes, that the scroller of aScrollPane has exactly one morph put in it."
	
	^ self
		on: aScrollPane scroller submorphs first
		in: aScrollPane