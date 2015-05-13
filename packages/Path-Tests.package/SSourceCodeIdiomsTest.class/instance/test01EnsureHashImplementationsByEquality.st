testing
test01EnsureHashImplementationsByEquality
	| classesWithEqual |
	classesWithEqual := self pathClasses select: [:each | each includesSelector: #=].
	self 
		assert: classesWithEqual notEmpty;
		assert: (classesWithEqual allSatisfy: [:each | each includesSelector: #hash]);
		assert: (classesWithEqual allSatisfy: [:each | 
					[each new hash ~= each new scaledIdentityHash] 
						on: MessageNotUnderstood do: [true] 
						"Ignore not correct initialized objects"]).