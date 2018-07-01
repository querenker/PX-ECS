accessing
leave

	self stepProcess suspend.
	self drawnLines do: [:line | line delete]