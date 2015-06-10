menu
setClass

	(self userSelectedContainerClass: 'type') ifNotNilDo: [ :selectedType |
		self setTypeAndUpdateLabel: selectedType ]
	