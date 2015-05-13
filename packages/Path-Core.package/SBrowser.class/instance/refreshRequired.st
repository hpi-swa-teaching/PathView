accessing
refreshRequired
	"Answer the value of refreshRequired"

	^ refreshRequired ifNil: [refreshRequired := false]