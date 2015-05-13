private
expandAllOfSelectedNode
	
	selectedMorph ifNil: [^ self].
	selectedMorph isExpanded ifTrue: [self toggleExpandedState: selectedMorph].
	self expandAll.