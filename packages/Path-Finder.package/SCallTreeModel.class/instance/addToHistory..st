history
addToHistory: aNode

	aNode ifNotNil: [
		(self history notEmpty and: [((self history at: self currentHistoryNode) id = aNode id)])
			ifTrue: [^ self].			
		(self history size = self currentHistoryNode) not
			ifTrue: [self history: (self history copyUpTo: (self history at: self currentHistoryNode + 1))].
		self history add: aNode.
		self currentHistoryNode: self history size].
	self refreshHistoryButtons.