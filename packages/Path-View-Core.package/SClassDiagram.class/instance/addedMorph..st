submorphs-add/remove
addedMorph: aMorph
	"aMorph has just been added to me"
	
	"Hide the mini-map by default to address the performance-issue when it is shown."
	self minimap ifNotNil: [ aMorph == self minimap ifTrue: [ aMorph hide. ] ].
	
	aMorph isClassMorph ifTrue: [
		classMorphs add: aMorph.
		aMorph focus ].
	self
		contentChangedBecauseOf: aMorph;
		changed: #morphAdded