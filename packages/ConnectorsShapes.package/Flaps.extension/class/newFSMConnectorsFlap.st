*connectorsShapes-flaps
newFSMConnectorsFlap
	"Answer a newly-created flap which adheres to the left edge of the screen and which holds prototypes of Connectors parts relevant to FSM diagrams."
	"Flaps newFSMConnectorsFlap openInWorld; setToPopOutOnDragOver: false."
	|  aFlapTab aStrip  |
	aStrip := self preferredConnectorsFlapBinClass newPartsBinWithOrientation: #leftToRight  andColor: (Color blue muchLighter alpha: 0.8) from: self quadsDefiningFSMConnectorsFlap buttonClass: self preferredConnectorsButtonClass.
	aStrip submorphs third
		actionSelector: #startWiringLabeled: ;
		arguments: { 'event' }.

	aFlapTab := FlapTab new referent: aStrip beSticky.
	aFlapTab setName: 'FSM' edge: #bottom color: (Color blue muchLighter).
	aFlapTab setBalloonText: aFlapTab balloonTextForFlapsMenu.

	aStrip beFlap: true.
	aStrip extent: (self currentWorld width @ 78).
	aStrip color: (Color blue muchLighter alpha: 0.8).
	aStrip submorphsDo: [ :ea | ea updateImage ].
	^ aFlapTab
