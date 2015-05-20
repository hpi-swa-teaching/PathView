installation
createConnectorsFlaps
	"ConnectorsInfo createConnectorsFlaps"
	| flap |
	Utilities
		informUser: 'Making new flaps (delete them if you want)...'
		during: [
			(Flaps globalFlapTab: 'Connectors')
				ifNil: [flap := Flaps newConnectorsFlap openInWorld; setToPopOutOnDragOver: false.
					Flaps addGlobalFlap: flap].
			Flaps positionNavigatorAndOtherFlapsAccordingToPreference]