connection-callbacks
point: aPoint relativeTo: morph
	| world mtfm ctfm |
	world := self world.
	ctfm := self transformFrom: world.
	mtfm := morph transformFrom: world.
	^mtfm globalPointToLocal: (ctfm localPointToGlobal: aPoint)