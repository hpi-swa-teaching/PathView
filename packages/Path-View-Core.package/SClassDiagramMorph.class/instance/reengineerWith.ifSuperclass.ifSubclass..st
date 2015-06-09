reengeneering
reengineerWith: aClassMorph ifSuperclass: superclassBlock ifSubclass: subclassBlock
	"Moving method categories only to direct sub-/super-classes.
	See comment in #processReengineeringInto: of SMethodMorph."
	
	aClassMorph visualizedClass superclass == self visualizedClass
		ifTrue: subclassBlock.
	self visualizedClass superclass == aClassMorph visualizedClass
		ifTrue: superclassBlock.