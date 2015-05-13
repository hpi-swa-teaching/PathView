preferences
lightContainerTypes
	"LightContainerTypes := nil."
	<preference: 'Lightweight container types'
		category: 'Path Map'
		description: 'Type harvester will check for collection types only as long as some information is missing. This results in a drastically speed up but the collected data can be less precise. In the other case, type harvester will check collections each time they occur.'
		type: #Boolean>
	^ LightContainerTypes ifNil: [ LightContainerTypes := false ]