installation
createConnectorsFlaps
	"ConnectorsInfo createConnectorsFlaps"
	| wasShowing |

	Utilities
		informUser: 'Making new flaps (delete them if you want)...'
		during: [
			(Flaps globalFlapTab: 'Connectors')
				ifNil: [ Flaps addGlobalFlap: Flaps newConnectorsFlap ].

			wasShowing := Flaps showSharedFlaps.
			wasShowing ifFalse: [ Project current flapsSuppressed: false ].

			Flaps positionNavigatorAndOtherFlapsAccordingToPreference.

			wasShowing ifFalse: [ Project current flapsSuppressed: true ] ]