menus
setScale: aNumber
	self transformMorph scale: ((aNumber max: 0.1) min: 100).
	Smalltalk garbageCollectMost.