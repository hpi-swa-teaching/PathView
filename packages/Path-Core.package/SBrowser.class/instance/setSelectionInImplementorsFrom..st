updating
setSelectionInImplementorsFrom: aMethodReference

		self previousMethod: aMethodReference.
		self changed: #implementorsListIndex.
		self previousMethod: nil.
		self changed: #senderListIndex