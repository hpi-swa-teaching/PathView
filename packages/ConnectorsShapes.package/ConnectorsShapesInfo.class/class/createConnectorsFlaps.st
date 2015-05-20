as yet unclassified
createConnectorsFlaps
	"ConnectorsShapesInfo createConnectorsFlaps"
	| wasShowing |

	Utilities
		informUser: 'Making new flaps (delete them if you want)...'
		during: [
			(Flaps globalFlapTab: 'FSM')
				ifNil: [ Flaps addGlobalFlap: Flaps newFSMConnectorsFlap ].
				
			(Flaps globalFlapTab: 'Class Diagrams')
				ifNil: [ Flaps addGlobalFlap: Flaps newClassDiagramConnectorsFlap ].

			wasShowing := Flaps showSharedFlaps.
			wasShowing ifFalse: [ Project current flapsSuppressed: false ].

			Flaps positionNavigatorAndOtherFlapsAccordingToPreference.

			wasShowing ifFalse: [ Project current flapsSuppressed: true ] ]