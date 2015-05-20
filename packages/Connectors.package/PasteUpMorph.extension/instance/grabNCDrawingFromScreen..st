*connectors-world menu
grabNCDrawingFromScreen: evt
	"Allow the user to specify a rectangular area of the Display, capture the pixels from that area (except for the PasteUpMorph itself), and use them to create a new drawing morph. Attach the result to the hand."
	"World grabNCDrawingFromScreen: ActiveHand lastEvent"
	| rect form m |
	rect := Rectangle fromUser.
	form := self currentWorld patchAt: rect without: self currentWorld andNothingAbove: false.
	m := World drawingClass new form: form.
	evt hand position: Sensor cursorPoint.  "update hand pos after Sensor loop in fromUser"
	evt hand attachMorph: m.