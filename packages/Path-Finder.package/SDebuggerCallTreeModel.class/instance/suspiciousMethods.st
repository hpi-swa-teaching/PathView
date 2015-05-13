accessing
suspiciousMethods
	"Answer the value of suspiciousMethods"

	^ suspiciousMethods ifNil: [suspiciousMethods := 
								self pathFinder coverageTracer mostSuspiciousMethods]