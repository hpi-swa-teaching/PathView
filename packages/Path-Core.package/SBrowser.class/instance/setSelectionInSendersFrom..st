updating
setSelectionInSendersFrom: aMethodReference

		self previousMethod: aMethodReference.
		self changed: #senderListIndex.
		self previousMethod: nil.
		self changed: #implementorsListIndex