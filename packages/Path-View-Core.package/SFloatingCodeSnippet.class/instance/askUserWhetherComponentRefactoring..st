reengineering
askUserWhetherComponentRefactoring: aClass
	
	^ self confirm: 'Will the receiver delegate to another instance of ', aClass name, '?'