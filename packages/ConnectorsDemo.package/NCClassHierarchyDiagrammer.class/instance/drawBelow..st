drawing
drawBelow: rootClass

	rootClass withAllSubclassesDo: [ :ea | self draw: ea ]
