menu-actions
close

	(savedStates isEmpty
	or: [savedStates keys size = 1 and: [savedStates keys first = currentState]])
		ifTrue: [(self ownerThatIsA: SystemWindow) delete]
		ifFalse: [
			savedStates removeKey: self stateKey ifAbsent: [].
			self restoreFrom: savedStates keys first]
