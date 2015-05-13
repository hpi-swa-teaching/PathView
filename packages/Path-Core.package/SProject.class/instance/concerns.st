accessing
concerns
	"Answer the value of concerns"

	^ concerns ifNil: [concerns := SConcernsRepository new]