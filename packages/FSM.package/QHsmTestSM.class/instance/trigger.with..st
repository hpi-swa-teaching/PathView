running
trigger: type with: argument
	^self dispatch: (QEvent type: type arguments: { argument })