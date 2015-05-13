accessing
offset: aPoint
	
	| oldOffset |
	oldOffset := self offset.
	
	"TODO -- there is a performance-issue with this super-call.
	If the mini-map is enabled (visible, not hidden), then this super-offset: call takes really long, resulting in a very sluggish feeling when scrolling around in the diagram.
	However, when the mini-map is disabled, this effect goes away, even with many morphs inside the diagram.
	Somehow the mini-map affects the repaint-performance of this Scroller-morph, even though it is not even a submorph of this scroller morph!"
	super offset: aPoint.
	
	offsetChangeBlock ifNotNil: [ offsetChangeBlock value: oldOffset value: self offset ].