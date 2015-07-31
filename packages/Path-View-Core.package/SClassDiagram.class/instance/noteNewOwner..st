submorphs-accessing
noteNewOwner: aMorph
	"Use this hook to initialize the smoothing-value of the TransformMorph-owner."
	
	super noteNewOwner: aMorph.
	self initializeSmoothing