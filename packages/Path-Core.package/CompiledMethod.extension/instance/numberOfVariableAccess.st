*Path-Core
numberOfVariableAccess
	| access type offset skipNextByte |
	access := 0.
	skipNextByte := false.
	(self isQuick and: [self isReturnSpecial not]) ifTrue: [^ 1].
	self initialPC to: self endPC 
		do: [:each | 
			skipNextByte 
				ifTrue: [skipNextByte := false]
				ifFalse: [
			type := (self at: each) // 16.
			type = 0
				ifTrue: ["Read instance variable"
						access := access + 1].
			type = 1
				ifTrue: ["Read temporary variable"
						access := access + 1].	
			(type = 4 or: [type = 5])
				ifTrue: ["Read literal variable (class variable)"
						access := access + 1].	
			type = 6
				ifTrue: ["Pop receiver or temporary variable"
						access := access + 1].									
			type = 8
				ifTrue: ["Extended read/write for receiver, temporary and class variables"
						offset := (self at: each) \\ 16. 
						offset = 0
							ifTrue: ["read variables"
								access := access + 1].
						offset = 2
							ifTrue: ["write variables"
								access := access + 1].							
						].
			(type = 8 or: [type = 10])
				ifTrue: [skipNextByte := true]]].
	^ access