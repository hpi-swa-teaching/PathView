copying
veryDeepInner: aDeepCopier 
	super veryDeepInner: aDeepCopier.
	constrained := constrained.
	inputs := inputs copy.	"this lets you stay attached"
	constraint := constraint veryDeepCopyWith: aDeepCopier.
	lastTarget := nil.
	lastTargetBounds := nil.
	stepTime := stepTime.
	dieWithInput := dieWithInput.