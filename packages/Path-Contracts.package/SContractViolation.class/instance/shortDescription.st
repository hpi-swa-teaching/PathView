printing
shortDescription
	"required for labels in PathMap and PathFinder - see also SPMViolationMorph"
	self variableName 
		ifNotNil: [^ self shortKindOf, ' in ', self variableName,': ', self messageText].
	^ self shortKindOf, ': ', self messageText