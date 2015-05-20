installation
postInstall
	self createConnectorsFlaps.
	Preferences addPreference: #useSmartLabels category:  'Connectors' default:  false balloonHelp: 'if set, Connectors will use labels that try to re-position themselves to stay out of the way.'