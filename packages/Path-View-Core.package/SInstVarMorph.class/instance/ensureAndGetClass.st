menu actions
ensureAndGetClass
	"If the type is not set after getting Class ask for it"

	^ self getClass ifNil: [
		self askForAndGetClass ]