event handling
allowsDetachmentOfConstraint: constraint
	"Answer true if the given constraint is either already disconnected, or can be disconnected after checking with the attached Morph and myself"
	| aMorph index |
	aMorph := constraint input.
	index := constraints indexOf: constraint.
	^aMorph isNil or: [
		(self wantsToDetachEnd: index fromMorph: aMorph)
			and: [ aMorph allowsDetachmentFromEnd: index ofConnector: self ]]
