accessing
drawConnections

	self drawnLines do: [:line | line delete].
	self drawnLines: OrderedCollection new.
	self connections do: [:connection |
		| from to |
		from := connection first bounds bottomCenter.
		to := connection second bounds topCenter.
		drawnLines add: (LineMorph from: from to: to color: Color green width: 2)].
	self drawnLines do: [:line | line openInWorld].