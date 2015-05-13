accessing
setColorIcon: aColor
	
	^ self setIconMorph:
		(aColor asMorph
			extent: 15 asPoint;
			yourself)