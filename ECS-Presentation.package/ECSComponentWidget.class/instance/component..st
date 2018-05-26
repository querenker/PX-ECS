accessing
component: anObject
	component := anObject.
	self component when: #valueChanged send: #shouldUpdate: to: self with: true.
	self configure