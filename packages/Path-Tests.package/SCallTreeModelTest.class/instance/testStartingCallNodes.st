testing
testStartingCallNodes

	self assert: self callTree startingCallNodes notEmpty.
	self assert: self callTree startingCallNodes size = 3.
	self assert: self callTree startingCallNodes first clientSelector == #setUp.
	self assert: self callTree startingCallNodes second clientSelector == 
		#testComplexTrace.
	self assert: self callTree startingCallNodes third clientSelector == #tearDown.