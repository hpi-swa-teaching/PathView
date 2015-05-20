*connectors-preferences
connectorsLabelFont
	"Answer the font to be used to label Connectors"
	^ Parameters
		at: #connectorsLabelFont
		ifAbsent: [Parameters at: #connectorsLabelFont put: TextStyle defaultFont]