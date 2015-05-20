*connectorsShapes-flaps
newConnectorsFlap
	"Answer a newly-created flap which adheres to the left edge of the screen and which holds prototypes of Connectors parts."
	"Flaps newConnectorsFlap openInWorld; setToPopOutOnDragOver: false."

	|  aFlapTab aStrip |
	aStrip := self preferredConnectorsFlapBinClass
		newPartsBinWithOrientation: #leftToRight andColor: (Color blue muchLighter alpha: 0.8) from: self quadsDefiningConnectorsFlap buttonClass: self preferredConnectorsButtonClass.
 
	aFlapTab := FlapTab new referent: aStrip beSticky.
	aFlapTab setName: 'Connectors' edge: #bottom color: Color blue muchLighter.
	aFlapTab setBalloonText: aFlapTab balloonTextForFlapsMenu.

	aStrip beFlap: true.
	aStrip extent: (self currentWorld width @ 78).
	aStrip submorphsDo: [ :ea | ea updateImage ].
	^ aFlapTab
