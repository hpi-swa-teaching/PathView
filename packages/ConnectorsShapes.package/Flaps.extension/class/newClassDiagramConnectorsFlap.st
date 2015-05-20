*connectorsShapes-flaps
newClassDiagramConnectorsFlap
	"Answer a newly-created flap which adheres to the left edge of the screen and which holds prototypes of Connectors parts relevant to UML class diagrams."
	
	"
	Flaps newClassDiagramConnectorsFlap openInWorld; setToPopOutOnDragOver: false.
	"

	|  aFlapTab aStrip |
	aStrip := self preferredConnectorsFlapBinClass
		newPartsBinWithOrientation: #leftToRight andColor: (Color blue muchLighter alpha: 0.3) from: self quadsDefiningClassDiagramConnectorsFlap buttonClass: self preferredConnectorsButtonClass.
 
	aFlapTab := FlapTab new referent: aStrip beSticky.
	aFlapTab setName: 'Class Diagrams' edge: #bottom color: Color blue muchLighter.
	aFlapTab setBalloonText: aFlapTab balloonTextForFlapsMenu.
	aFlapTab setToPopOutOnDragOver: false.
	self currentWorld addMorphFront: aFlapTab.

	aStrip beFlap: true.
	aStrip extent: (self currentWorld width @ 78).
	aStrip submorphsDo: [ :ea | ea updateImage ].
	
	^aFlapTab
