as yet unclassified
testShouldUpdateTheCategoryAutomatically
	| set newCategory |
	instance update.
	set := (self allSubmorphsRecursiveFor: instance).
	newCategory := self class testClassMethodsCategory, 'Renamed'.
	self assert: [self thereIsAStringMorphIn: set with: self class testClassMethodsCategory].
	self mock: #doSilently: of: SystemChangeNotifier toReturn: [:recv :block | block value] during: [
		testClass organization 
			renameCategory: self class testClassMethodsCategory toBe: newCategory].
	[self assert: [self thereIsAStringMorphIn: set with: newCategory]]
		ensure: [testClass organization 
			renameCategory: newCategory toBe: self class testClassMethodsCategory].