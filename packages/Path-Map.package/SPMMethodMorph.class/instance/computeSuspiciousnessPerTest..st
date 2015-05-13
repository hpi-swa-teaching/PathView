menu actions
computeSuspiciousnessPerTest: aCollection
	| suspiciousMethods coveredMethods suspiciousScores |
	self pathMap selectedAnalysis = #faultLocalization
		ifFalse: [^ aCollection collect: [:each | {each. 0.0}]].
	suspiciousMethods := self pathMap tracer mostSuspiciousMethods.
	suspiciousMethods ifEmpty: [^ aCollection collect: [:each | {each. 0.0}]].
	^ aCollection collect: [:test | 
			| score |
			score := 0.0.			
			coveredMethods := (self pathMap tracer testResults at: test) keys.
			suspiciousScores := suspiciousMethods 
				select: [:method | coveredMethods includes: method key]
				thenCollect: [:method | method value first].
			suspiciousScores ifNotEmpty: [score := score + suspiciousScores sum].
			{test. score}]