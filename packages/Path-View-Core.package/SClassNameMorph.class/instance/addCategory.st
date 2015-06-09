reengineering
addCategory
	"Present a choice of categories or prompt for a new category name"
	| labels reject lines menuIndex newName |

	labels := OrderedCollection with: 'new...'.
	reject := Set new.
	reject
		addAll: klass organization categories;
		add: ClassOrganizer nullCategory;
		add: ClassOrganizer default.
	lines := OrderedCollection new.
	klass allSuperclasses do: [:cls | | cats |
		cls = Object ifFalse: [
			cats := cls organization categories reject:
				 [:cat | reject includes: cat].
			cats isEmpty ifFalse: [
				lines add: labels size.
				labels addAll: cats asSortedCollection.
				reject addAll: cats]]].
	newName := (labels size = 1 or: [
		menuIndex := (UIManager default chooseFrom: labels lines: lines title: 'Add Category').
		menuIndex = 0 ifTrue: [^ self].
		menuIndex = 1])
			ifTrue: [
				UIManager default request: 'Please type new category name'
					initialAnswer: 'category name']
			ifFalse: [
				labels at: menuIndex].
			
	newName isEmpty
		ifTrue: [^ self]
		ifFalse: [newName := newName asSymbol].
	
	klass organization addCategory: newName.
