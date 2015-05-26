as yet unclassified
testShouldRemoveItselfIfCategoryIsRemoved
	self assert: false.
	"instance update.
	self class testClassMethods keys do: [:s | testClass removeSelector: s].
	self mock: #doSilently: of: SystemChangeNotifier toReturn: [:recv :block | block value] during: [
		self
			assert: [testClass organization removeCategory: self class testClassMethodsCategory]
			sends: #delete
			to: instance class]."