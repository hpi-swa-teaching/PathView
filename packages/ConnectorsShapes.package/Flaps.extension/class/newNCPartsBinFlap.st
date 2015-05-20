*connectorsShapes-flaps
newNCPartsBinFlap
	"Answer a newly-created flap which adheres to the left edge of the screen."
	"Flaps newNCPartsBinFlap openInWorld; setToPopOutOnDragOver: false."

	|  aFlapTab aStrip |
	aStrip := self preferredConnectorsFlapBinClass
		newPartsBinWithOrientation: #topToBottom andColor: (Color orange muchLighter alpha: 0.8) from: #() buttonClass: self preferredConnectorsButtonClass.
 
	aFlapTab := FlapTab new referent: aStrip beSticky.
	aFlapTab setName: 'My Flap' edge: #left color: Color orange lighter.
	aFlapTab position: (self currentWorld width - aFlapTab width) @ ((Display height - aFlapTab height) * 2 // 3).
	aFlapTab setBalloonText: aFlapTab balloonTextForFlapsMenu.

	aStrip extent: (120 @ self currentWorld height).
	aStrip beFlap: true.
	aStrip color: (Color orange muchLighter alpha: 0.8).
	
	^ aFlapTab
