accessing
hasViolations
	"Direct access to prevent lazy initialize"

	^ violations notNil and: [violations notEmpty]