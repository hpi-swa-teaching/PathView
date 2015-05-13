specific runs
debugAt:	aCallNode
	
	| wrapper |
	(self callTreeModel numberOfCallsBefore: aCallNode) = 0
		ifTrue: [
			[SBreakpointManager installInClass: aCallNode clientClass selector: aCallNode clientSelector.
			self runRootNode] ensure: [
				SBreakpointManager unInstall:  aCallNode clientClass >> aCallNode clientSelector]]
		ifFalse: [
			[wrapper := self createDebugWrapperOn: aCallNode.
			wrapper install.
			self runRootNode] ensure: [
				SBreakpointManager unInstall:  aCallNode clientClass >> aCallNode clientSelector.
				wrapper uninstall]]