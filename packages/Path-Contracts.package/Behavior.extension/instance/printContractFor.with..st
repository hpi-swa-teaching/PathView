*Path-Contracts
printContractFor: anArgumentName with: aBuilder
	| contract |
	anArgumentName ifNil: [^ self].
	(SContract blacklistedTypes includes: self) ifTrue: [^ self].
	contract := self argumentTemplate 
		copyReplaceTokens: '<ARGUMENT>' with: anArgumentName.
	contract := contract copyReplaceTokens: '<TYPE>' with: self asString.
	aBuilder printSourceLine: contract