geometry
truncateDiagram
"1. Move all morphs to top left (get top left by bounding in world)
 2. Diff with Scrollpane, update extent and make sure Diagram has still bigger extent"
	| offset |

	offset := self boundingBoxOfSubmorphs. 
	self submorphsDo: [ :aMorph |
		aMorph topLeft: (aMorph topLeft - offset topLeft)].

	self extent: (offset right max: (self scrollPane bounds right - self scrollPane bounds left)) 
		@ (offset bottom max: (self scrollPane bounds bottom - self scrollPane bounds top)). 
	
	self updateScrollPane.