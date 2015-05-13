accessing
mouseEnterDeletion
	"Answer the value of mouseEnterDeletion"

	^ mouseEnterDeletion ifNil: [mouseEnterDeletion := true]