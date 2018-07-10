accessing
reset

	self componentStore: Dictionary new.
	self deleteComponentFromEntitySchedule: OrderedCollection  new.
	self eventManager clearEvents.
	self deleteComponentFromEntitySchedule: OrderedCollection  new