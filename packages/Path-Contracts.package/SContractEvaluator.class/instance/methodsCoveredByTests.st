accessing
methodsCoveredByTests

	^ self coveredMethods ifNil: 
		[self initializePathMap.
		self pathMap runTests: #suiteAll with: #testQuality.
		self coveredMethods: (self pathMap tracer getAllCoveredMethods keys 
		reject: [:each | ((each methodSymbol beginsWith: 'test') 
						or: [each compiledMethod isQuick])
						or: [each actualClass inheritsFrom: TestCase]]).
		^ self coveredMethods]