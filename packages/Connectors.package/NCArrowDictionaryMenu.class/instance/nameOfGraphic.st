accessing
nameOfGraphic
	^ entryNames ifNotNilDo: [ :en | en at: currentIndex ifAbsent: []]
