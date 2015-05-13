updating
setMethodRefAndRefreshSendersSelection: aMethodRef

	| previousRef |
	previousRef := self selectedMethodReference.
	self setClass: aMethodRef actualClass selector: aMethodRef methodSymbol.
	self setSelectionInSendersFrom: previousRef