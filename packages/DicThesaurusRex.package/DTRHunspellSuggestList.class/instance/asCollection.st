converting
asCollection
	| ptr ptrSize |
	listSize >= 0 ifFalse: [Error signal: 'suggestion list with unknown size cannot be converted'].
	ptrSize := ExternalAddress new size.
	ptr := self getHandle asExternalPointer pointerAt: 1.
	^ (1 to: (listSize - 1) * ptrSize + 1 by: ptrSize) collect: [:offset |
		(ExternalData 
			fromHandle: (ptr pointerAt: offset) 
			type: ExternalType char asPointerType) fromCString]