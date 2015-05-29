submorphs-accessing
noteNewOwner: aMorph
	"I have just been added as direct submorph to aMorph."
	
	super noteNewOwner: aMorph.
	self addDependent: aMorph.