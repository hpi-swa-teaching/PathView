logging
log: type items: anArray
	| log |
	(self isLogging: type) ifFalse: [ ^self ].
	log := self logger.
	log nextPutAll: self externalName; nextPut: $(; print: self identityHash; nextPut: $); space; nextPutAll: type; space.
	anArray do: [ :item | log print: item ] separatedBy: [ log space ].
	log cr.