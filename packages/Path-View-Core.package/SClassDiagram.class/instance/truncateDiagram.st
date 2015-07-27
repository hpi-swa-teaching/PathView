geometry
truncateDiagram

	| offset |

	offset := self boundingBoxOfSubmorphs. 
	self submorphsDo: [ :aMorph |
		aMorph topLeft: (aMorph topLeft - offset topLeft)].

	self extent: (offset right max: (self scrollPane bounds right - self scrollPane bounds left)) 
		@ (offset bottom max: (self scrollPane bounds bottom - self scrollPane bounds top)). 
	
	self updateScrollPane.