class initialization
initialize
	"NCDisplayTextMorph initialize"
	ScriptingSystem addCustomEventFor: self named: #acceptedTextContents help: 'when text is accepted into a text morph by hitting Enter or losing focus' targetMorphClass: self.
