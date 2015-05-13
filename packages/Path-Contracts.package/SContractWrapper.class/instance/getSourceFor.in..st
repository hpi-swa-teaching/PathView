compiled method
getSourceFor: selector in: class
	"Polymorphic with CompiledMethod"
	^ self clientMethod getSourceFor: selector in: class