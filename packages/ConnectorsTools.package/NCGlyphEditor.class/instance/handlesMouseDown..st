event handling
handlesMouseDown: evt
	^(self editBox containsPoint: evt position) or: [ super handlesMouseDown: evt ]