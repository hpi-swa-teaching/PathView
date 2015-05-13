testing
testExploreFullCallNode

	| callNode |
	callNode := self getNode: 12.
	self assert: callNode objects isEmpty.
	callNode 
		explore: #types;
		explore: #arguments;
		explore: #selfBefore;
		explore: #selfAfter;
		explore: #return.
	self assert: callNode objects notNil.
	self assert: (callNode objects at: #types) = 
		(OrderedCollection with: #self->SSBClassB with: #result->SmallInteger)."types" 
	self assert: (callNode objects at: #arguments) first = #(). "args" 
	self assert: (callNode objects at: #selfBefore) first myValue myValue = 5. "selfBefore"
	self assert: (callNode objects at: #selfAfter) first myValue myValue = 5. "selfAfter"
	self assert: (callNode objects at: #return) first = 10. "return"
