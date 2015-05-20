connectors-labels
boundsSignatureHash
	| hash |
	hash := line boundsSignatureHash.
	self validConnections do: [ :ea |
		hash := (hash + ea boundsSignatureHash + ea owner identityHash) hashMultiply
	].
	^hash
