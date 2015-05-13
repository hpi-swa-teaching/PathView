class initialization
initialize
	"self initialize"
	super initialize.
	InvariantGroups := WeakKeyDictionary new.
	InvariantMethods := WeakKeyDictionary new.