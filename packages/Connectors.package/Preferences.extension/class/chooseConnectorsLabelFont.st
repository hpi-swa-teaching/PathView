*connectors-preferences
chooseConnectorsLabelFont
	self
		chooseFontWithPrompt: 'Connectors label font'
		andSendTo: self
		withSelector: #setConnectorsLabelFontTo: