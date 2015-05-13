testing
test18RaiseIncludesContractViolation

	self shouldnt: [SSBClassD new myValue2: (ReadWriteStream 
					with: OrderedCollection new)] runWithContracts 
		raise: SContractViolation.
	self should: [[SSBClassD new myValue2: (ReadWriteStream 
					with: SortedCollection new)] runWithContracts] 
		raise: SIncludesContractViolation.
	[[SSBClassD new myValue2: (ReadWriteStream 
			with: SortedCollection new)] runWithContracts] 
		on: SIncludesContractViolation 
		do: [:violation | 
			self 
				assert: violation description = 'Includes violation (contents class: SortedCollection is not included in {OrderedCollection . ByteString}) precondition of anObject fails in SSBClassD myValue2:';
				assert: violation shortDescription = 'Pre in anObject: Includes violation >> SortedCollection not included in {OrderedCollection . ByteString}'.].