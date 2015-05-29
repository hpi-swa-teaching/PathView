toolbar-actions
addClass

	"Present a choice of classes or prompt for a new class name"
	| choices labels menuIndex newName noClassesFound |

	noClassesFound := false.
	choices := self getClasses.
	labels := self getLabelsFromClasses: choices ifEmpty: [ noClassesFound := true ].
	
	newName := (noClassesFound or: [
		menuIndex := (UIManager default chooseFrom: labels title: 'Add Class').
		menuIndex = 0 ifTrue: [^ self].
		menuIndex = 1])
			ifTrue: [
				UIManager default request: 'Please type new class name'
					initialAnswer: 'ClassName']
			ifFalse: [
				choices at: menuIndex-1].
			
	newName isNil ifTrue: [^ self].
	newName isString ifTrue: [ 
		(RBAddClassRefactoring 
			addClass: newName 
			superclass: Object 
			subclasses: {} 
			category: (UIManager default 
							chooseFrom: SystemOrganization categories
							values: SystemOrganization categories
							title: 'Choose a system category')
			) execute.
		newName := Smalltalk at: newName asSymbol. ].  
	
	(SClassMorph on: newName) openInHand.
	