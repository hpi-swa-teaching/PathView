editing
acceptContents
	"Tell our interested parties about our new contents"
	super acceptContents.
	self triggerEvent: #accept withArguments: {self contents. self}.
	self triggerEtoyEvent: #acceptedTextContents.
	ActiveHand releaseKeyboardFocus: self