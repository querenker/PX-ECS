initialization
initialize

	| body header |
	super initialize.
	
	self contentWidget: (PHWidget newWithVerticalLayout).
	self cardNameWidget: (PHPage row).
	
	body := PHCollapsible new add: self contentWidget.
	header := PHCardHeader new
		add: self cardNameWidget;
		when: #clicked send: #toggleCollapsed to: body;
			yourself.

	self
		componentTextValueAssociation: Dictionary new;
		withLayout;
		add: (PHCard new
			add: header;
			add: body;
			yourself)