Contract enforcement
extractGroupsFrom: aContractMethod

	| pragma |
	aContractMethod ifNil: [^ nil].
	"This works since each contract method contains exactly one of our pragmas"
	pragma := (aContractMethod pragmas select: [:p | 
		Object contractPragmas includes: p keyword]) first.
	^ pragma arguments first ifNil: [Set new]