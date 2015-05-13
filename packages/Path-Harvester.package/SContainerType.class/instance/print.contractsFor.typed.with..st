contracts
print: aString contractsFor: anArgumentName typed: aType with: aBuilder
	| contract |
	(anArgumentName isNil or: [aType isNil]) ifTrue: [^ self].
	(SContract blacklistedTypes includes: aType) ifTrue: [^ self].
	contract := aString 
		copyReplaceTokens: '<COLLECTION>' with: anArgumentName.
	contract := contract copyReplaceTokens: '<TYPE>' with: aType asString.
	aBuilder printSourceLine: contract.