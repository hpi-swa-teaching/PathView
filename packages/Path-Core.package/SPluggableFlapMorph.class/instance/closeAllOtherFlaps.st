switching
closeAllOtherFlaps
	self owner ifNil: [^ self].
	self flag: #mpe. "Refactor the owner relationship to a more stable version, later on"
	"Add some kind of select flap selector..."
	self owner paneMorphs 
		select: [:each | (each isKindOf: self class) and: [(each == self) not]]
		thenDo: [:each | each closeFlap].