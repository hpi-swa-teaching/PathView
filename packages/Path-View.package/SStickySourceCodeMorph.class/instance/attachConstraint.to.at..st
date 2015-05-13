connections
attachConstraint: aConstraint to: aMorph at: aDirection
	
	| targets |
	targets := Dictionary newFrom: {
		#top -> [:m | m topCenter ] .
		#bottom -> [:m | m bottomCenter]
	}.
	aConstraint attachTo: aMorph at: ((targets at: aDirection) value: aMorph).