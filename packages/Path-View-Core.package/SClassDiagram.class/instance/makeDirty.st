menu-actions
makeDirty
	
	"Hacky; exception occurs when this is done with CLOSED diagram windows,
	in changed: #windowLabel. The model, that is sent #windowLabel, is nil."
	[ self dirty: true ]
		on: MessageNotUnderstood do: [ "nothing" ].