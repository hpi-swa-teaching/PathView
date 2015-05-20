*connectors-testing
intersectsLineFrom: start to: finish 
	^ (self topLeft
			to: self topRight
			intersects: start
			to: finish)
		or: [(self topRight
					to: self bottomRight
					intersects: start
					to: finish)
				or: [(self bottomRight
							to: self bottomLeft
							intersects: start
							to: finish)
						or: [self bottomLeft
								to: self topLeft
								intersects: start
								to: finish]]]