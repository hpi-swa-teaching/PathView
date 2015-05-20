as yet unclassified
createConnectorsFlaps
	"ConnectorsShapesInfo createConnectorsFlaps"
	| flap |
	Utilities
		informUser: 'Making new flaps (delete them if you want)...'
		during: [
			(Flaps globalFlapTab: 'FSM')
				ifNil: [flap := Flaps newFSMConnectorsFlap openInWorld; setToPopOutOnDragOver: false.
					Flaps addGlobalFlap: flap].
				
			(Flaps globalFlapTab: 'Class Diagrams')
				ifNil: [flap := Flaps newClassDiagramConnectorsFlap openInWorld; setToPopOutOnDragOver: false.
					Flaps addGlobalFlap: flap].

			Flaps positionNavigatorAndOtherFlapsAccordingToPreference]