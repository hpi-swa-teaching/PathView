metric tests
test02bNumberOfMethodsOfClassAndMethodCategoryWithoutQuick

	self assert: (self project 
					numberOfMethodsOfClass: ClockTimer 
					methodCategory: 'accessing' withQuick: false) = 3.
	self assert: (self project 
					numberOfMethodsOfClass: ClockTimer 
					methodCategory: 'initialize-release' withQuick: false) = 1.
