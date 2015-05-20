menus
setActionSelector
	| newSel possibilities request |
	possibilities := #(startWiring startWiringLabeled openInHand openInWorld)
		select: [ :ea | target respondsTo: ea ].
	request := 'Please type the selector to be sent to
the target when this button is pressed.
Some possibilities:'.
	possibilities do: [ :ea | request := request, '
· ', ea ].
	newSel := FillInTheBlank
		request: request
		initialAnswer: actionSelector.
	newSel isEmpty ifFalse: [self actionSelector: newSel].
