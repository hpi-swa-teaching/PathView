accessing
concernGroup
	"Answer the value of concernGroup"

	^ concernGroup ifNil: [concernGroup := self concerns groups keys first]