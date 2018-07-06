accessing
initialize 

	self componentStore: Dictionary new.
	self eventManager: ECSEventManager new.
	self deleteComponentFromEntitySchedule: OrderedCollection  new