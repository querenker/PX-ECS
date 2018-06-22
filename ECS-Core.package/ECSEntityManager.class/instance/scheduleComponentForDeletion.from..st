as yet unclassified
scheduleComponentForDeletion: aComponent from: anEntity

	self deleteComponentFromEntitySchedule add: {aComponent . anEntity}