coverage list
getCoveredByteCodes
	| wrapper |
	self flag: #mpe. "ToDo: Needs Refactoring - quite similar to SDebuggerCodePane"
	[wrapper := SMethodByteCodeCoverageForAllTestsWrapper 
					on: self selectedMethodReference.
	wrapper install.
	self coverageList
		do: [:each | wrapper currentTest: each.
				     each execute] 
		displayingProgress: [:each | 
			'Processing ', each asString, ' out of ', 
			self coverageList size asString, ' Entry Points.']]
	ensure: [wrapper uninstall].
	^ wrapper coveredByteCodes
