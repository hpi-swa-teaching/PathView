preconditions
preconditions
	"The same preconditions like in the super-class, but remove the need 
	to have an abstract class as source."
	
	| condition |
	condition := selectors inject: RBCondition empty
				into: 
					[:cond :each | 
					cond & (RBCondition definesSelector: each in: class) 
						& (RBCondition subclassesOf: class referToSelector: each) not].
	^ condition