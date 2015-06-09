drawing
frameRectangle: aRectangle on: aCanvas
	"We draw our frame 1 higher than our actual frame (expanding over the bottom). This way, the next morphs border falls in-line with ours"
	^ super frameRectangle: (aRectangle extendBy: 0@1) on: aCanvas