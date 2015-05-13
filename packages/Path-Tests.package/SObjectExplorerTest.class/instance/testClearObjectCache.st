testing
testClearObjectCache

	| callNode |
	callNode := self getNode: 12.
	self assert: callNode objects isEmpty.
	callNode explore: #return.
	self assert: callNode objects notEmpty.
	callNode clearObjectCache.
	self assert: callNode objects isEmpty.