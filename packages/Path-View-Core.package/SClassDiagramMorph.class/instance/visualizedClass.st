accessing
visualizedClass
	"Resolves THContainerType to a real Class. If an instance of Behavior is required, this should be used instead of sending #klass.
	In general, the THContainerType acts as a proxy to it's element-type. But sometimes this does not suffice - e.g.
	when checking, if this klass is included in a collection. Then the actual class is needed. Or, when a MethodReference is created for the class."
	
	^ klass isBehavior
		ifTrue: [ klass ]
		ifFalse: [ klass innerTypeOfElements ifNil: [ klass ] ]