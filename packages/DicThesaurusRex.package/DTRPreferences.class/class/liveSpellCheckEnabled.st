accessing
liveSpellCheckEnabled
	<preference: 'Enable spell checker and highlighting in code editors' category: 'spell checker (DTR)' description: 'If enabled, possibly misspelled words will be underlined and highlighted in code editors such as in Workspaces or Browsers' type: #Boolean>
	^ LiveSpellCheckEnabled ifNil: [LiveSpellCheckEnabled := false]