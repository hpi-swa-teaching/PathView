initialization
setScale
	"Iterate through the nodes and get a reasonable scale"

	self scale: (self nodes collect: [:ea | ea bounds extent]) max r