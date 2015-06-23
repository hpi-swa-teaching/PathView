menu-actions
dirty: aBoolean
	"The dirty-flag is the most frequently changed flag, use it to update all sorts of states."

	dirty := aBoolean.
	
	self
		changed: #isDirty;
		changed: #hasChanged;
		changed: #hasSubmorphs;
		changed: #windowLabel;
		changed: #isSaved.