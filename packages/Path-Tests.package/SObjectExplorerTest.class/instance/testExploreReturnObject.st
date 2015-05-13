testing
testExploreReturnObject

	| callNode |
	callNode := self getNode: 12.
	self assert: callNode objects isEmpty.
	self assert: ((callNode explore: #return) first = 10).
	self assert: callNode objects notEmpty.
	self assert: ((callNode objects at: #return) first = 10).
	callNode callTreeModel: nil. 
	"get cached value without callTree access - no reload is possible"
	self assert: ((callNode explore: #return) first = 10).