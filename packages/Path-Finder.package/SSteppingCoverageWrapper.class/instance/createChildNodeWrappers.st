installation
createChildNodeWrappers
	self childNodeWrappers: Dictionary new.
	self callNode nextCalls
		do: [:each | 
			self childNodeWrappers
				at: each 
				put: (SSteppingChildWrapper
						on: each clientSelector
						inClass: each clientClass
						waitingCalls: (each callTreeModel numberOfCallsBefore: each)
						coverageWrapper: self)]