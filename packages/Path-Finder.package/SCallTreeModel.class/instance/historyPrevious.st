history
historyPrevious
	self historyPreviousButtonEnabled
		ifTrue: [
			self currentHistoryNode: self currentHistoryNode + 1.
			(self history at: self currentHistoryNode) setAsCurrentSelection.
			self refreshHistoryButtons].