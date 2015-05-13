testing
testBrowseSelectedNode

	| browser |
	self assert: self callTree browseMethod == self callTree.
	self callTree newSelectedItem: (self getNode: 12).
	browser := self callTree browseMethod.
	self assert: browser class == SBrowser.
	self assert: browser selectedClass == SSBClassB.
	self assert: browser selectedMessageName == #compute.
	self flag: #mpe. "Find a better way to close the system window"
	browser dependents first delete.