class initialization
initialize
	"NCTextMorph initialize"
	ScriptingSystem addCustomEventFor: self named: #acceptedTextContents help: 'when text is accepted into a text morph by hitting Enter or losing focus' targetMorphClass: self.
