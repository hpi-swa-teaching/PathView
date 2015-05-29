reengineering
isComponentRefactoring: aClass
	"If the target class is one of the superclasses of our original class, we have to ask the user to know the answer.
	If we are extracting the method-snippet into a totally different class, it has to be a component refactoring."
	
	^ (originalMethod key = aClass) not
		or: [ self askUserWhetherComponentRefactoring: aClass ]