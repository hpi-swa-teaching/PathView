loading/saving
saveToCodeTemplate
	"saveName methodMorphSpecs(class -> selector. topLeft. bottomLeft)
	pinnedMethods(class -> selector) pinnedVariables(class -> selector)"
	^ '
	"------------------------"
	({2} on: {3}) ifNotNilDo: [:classMorph |.
		{1} addMorph: classMorph.
		[{1} openMutex critical: [
		 ', SRestoreVisitor name asString,' restore: classMorph from: {4}]] fork].
	"------------------------"
	'