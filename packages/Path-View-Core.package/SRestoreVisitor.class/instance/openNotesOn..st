restoring
openNotesOn: aMorph

	self notesStore copy do: [:spec || target |
		target := SNoteMorph new
			openInWorld: (aMorph pasteUpMorphOrWorld);
			setText: spec first;
			bounds: spec last.
		SNoteConnector openFor: aMorph connectedTo: target.
		self notesStore remove: spec].