accessing
deleteAllScheduledComponentsFromEntities

	self deleteComponentFromEntitySchedule do: [ :each | self deleteComponent: each first from: each second]