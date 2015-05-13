testing
test01ProjectInitialization
	self assert: SProject projectRegistry isEmpty. 
	self assert: self project isNil.
	SProject initialize. 
	self assert: SProject allProjectNames =  #(path sunit sandbox monticello null
												systemBrowser observerExample).
	self assert: SProject isNullProjectSelected.