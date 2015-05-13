accessing
cacheConcerns
	"Answer the value of cacheConcerns"

	^ cacheConcerns ifNil: [IdentityDictionary new]