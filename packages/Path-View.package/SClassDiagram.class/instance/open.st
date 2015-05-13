menu-actions
open
	| projectViews otherViews |
	self submorphs isEmpty & self isDirty not ifFalse: [self saveState].
	projectViews := (self viewsFor: SProject current).
	otherViews := self allViews sort copyWithoutAll: projectViews.
	self openSaved: ((SMultipleChoiceRequest
								prompt: 'Views for ', SProject current
								labels: (projectViews collect: [:s | s asText addAttribute: TextEmphasis struckOut]), otherViews
								values: projectViews, otherViews
								lines: {projectViews size})
									ifNil: [^ self]).