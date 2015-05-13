visualization
numberOfTests
	"I am a cache"
	^ numberOfTests ifNil: [numberOfTests := self pathMap numberOfTests]