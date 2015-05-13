layout and labels
recursivelyUpdateExpansion: previouslyExpandedEntries
	
	expanded ifTrue: [ self updateExpansion ].
	(self entries select: #isExpandable) do: [:entry |
		previouslyExpandedEntries do: [:previousEntry |
			(entry isEquivalentTo: previousEntry) ifTrue: [
				entry toggleExpansion.
				entry recursivelyUpdateExpansion: previousEntry entries. 
			]  
		]
	].