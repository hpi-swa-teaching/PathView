building
menuButtons
	"These buttons represent the menu. They contain meta-actions like saving or opening another view."
	
	^ #(
		('File' #fileMenu #alwaysEnabled)
		('Preferences' #openPreferences #alwaysEnabled)
		)