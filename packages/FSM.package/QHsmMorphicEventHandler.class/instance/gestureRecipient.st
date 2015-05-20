accessing
gestureRecipient
	^(self handlerAt: #gesture ifPresent: [:h | ^h receiver]) ifNil: [ self morph ].
