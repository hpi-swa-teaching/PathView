mapping button
removeMapping
	self isTestClassSelected
		ifTrue: [((self concernMapping at: self selectedConcern) 
					select: [:each | each actualClass == self selectedTestClass])
					do: [:each | (self concernMapping at: self selectedConcern) remove: each]]
		ifFalse: [(self concernMapping at: self selectedConcern) remove: self selectedTest]
