spec commands
drawExclamationMarkOn: icon
	| canvas |
	canvas := FormCanvas on: icon.
	canvas translucentImage: UiFugueIcons exclamationFrameIcon at: 0@0.
	^ canvas form