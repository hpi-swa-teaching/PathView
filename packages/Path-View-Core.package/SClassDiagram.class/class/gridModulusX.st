gridding
gridModulusX
		<preference: 'Grid modulus X value'
		category: 'Path View'
		description: 'When gridding is enabled via the `Toggle grid` button, this determines the x value of the grid size, the entities get alinged to.'
		type: #Number>
	^ GridModulusX ifNil: [ GridModulusX := 10 ]