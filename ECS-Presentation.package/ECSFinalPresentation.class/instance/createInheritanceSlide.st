initialize-release
createInheritanceSlide

	| content entityBody entityCard entityContent entityHeader dwarfCard dwarfWizardCard wizardCard wizardBody wizardContent wizardHeader dwarfBody dwarfContent dwarfHeader dwarfWizardBody dwarfWizardContent dwarfWizardHeader |
	content := PHWidget new
		withLayout;
		align: #(center center).
	
	entityContent := (PHWidget new
		withLayout;
		vertical: true;
		add: (PHLabel text: 'Attributes:');
		add: (PHLabel text: '- walking speed');
		add: (PHLabel text: '- walking direction');
		add: (PHLabel text: '- health');
		add: (PHLabel text: 'Methods:');
		add: (PHLabel text: '- walk()')).
	entityBody := PHCollapsible new
		toggleCollapsed;
		add: entityContent.
	entityHeader := PHCardHeader new
		add: (PHLabel text: 'Entity');
		when: #clicked send: #toggleCollapsed to: entityBody;
		yourself. 
	entityCard := (PHCard new
		minSize: (200@1) withScalingFactor;
		align: #(center center);
		add: entityHeader;
		add: entityBody;
		yourself).
		
	wizardContent := (PHWidget new
		withLayout;
		vertical: true;
		add: (PHLabel text: 'Attributes:');
		add: (PHLabel text: '- walking speed');
		add: (PHLabel text: '- walking direction');
		add: (PHLabel text: '- health');
		add: (PHLabel text: '- mana');
		add: (PHLabel text: 'Methods:');
		add: (PHLabel text: '- walk()');
		add: (PHLabel text: '- curse()')).
	wizardBody := PHCollapsible new
		toggleCollapsed;
		add: wizardContent.
	dwarfContent := (PHWidget new
		withLayout;
		vertical: true;
		add: (PHLabel text: 'Attributes:');
		add: (PHLabel text: '- walking speed');
		add: (PHLabel text: '- walking direction');
		add: (PHLabel text: '- health');
		add: (PHLabel text: '- axe power');
		add: (PHLabel text: 'Methods:');
		add: (PHLabel text: '- walk()');
		add: (PHLabel text: '- attack()')).
	dwarfBody := PHCollapsible new
		toggleCollapsed;
		add: dwarfContent.
	
	wizardHeader := PHCardHeader new
		add: (PHLabel text: 'Wizard');
		when: #clicked send: #toggleCollapsed to: wizardBody;
		when: #clicked send: #toggleCollapsed to: dwarfBody;
		yourself. 
	
	wizardCard := (PHCard new
		minSize: (200@1) withScalingFactor;
		align: #(center center);
		add: wizardHeader;
		add: wizardBody;
		yourself).
	
	dwarfHeader := PHCardHeader new
		add: (PHLabel text: 'Dwarf');
		when: #clicked send: #toggleCollapsed to: dwarfBody;
		when: #clicked send: #toggleCollapsed to: wizardBody;
		yourself. 
	dwarfCard := (PHCard new
		minSize: (200@1) withScalingFactor;
		align: #(center center);
		add: dwarfHeader;
		add: dwarfBody;
		yourself).
		
	dwarfWizardContent := (PHWidget new
		withLayout;
		vertical: true;
		add: (PHLabel text: 'Attributes:');
		add: (PHLabel text: '- walking speed');
		add: (PHLabel text: '- walking direction');
		add: (PHLabel text: '- health');
		add: (PHLabel text: '- mana');
		add: (PHLabel text: '- axe power');
		add: (PHLabel text: 'Methods:');
		add: (PHLabel text: '- walk()');
		add: (PHLabel text: '- curse()');
		add: (PHLabel text: '- attack()')).
	dwarfWizardBody := PHCollapsible new
		toggleCollapsed;
		add: dwarfWizardContent.
	dwarfWizardHeader := PHCardHeader new
		add: (PHLabel text: 'Dwarf Wizard');
		when: #clicked send: #toggleCollapsed to: dwarfWizardBody;
		yourself. 
	dwarfWizardCard := (PHCard new
		minSize: (200@1) withScalingFactor;
		align: #(center center);
		add: dwarfWizardHeader;
		add: dwarfWizardBody;
		yourself).
			
	content
		add: (PHPage row
			align: #(center center);
			add: (PHWidget new minSize: (500@100) withScalingFactor );
			"add: PHWidget spacer;"
			add: (PHPage column
				add: (PHWidget new minSize: (100@50) withScalingFactor );
				add: wizardCard);
			add: (PHPage column
				add: entityCard;
				add: (PHWidget new minSize: (100@50) withScalingFactor );
				add: dwarfWizardCard);
			add: (PHPage column
				add: (PHWidget new minSize: (100@50) withScalingFactor );
				add: dwarfCard)";
			add: PHWidget spacer").

	^ ECSSlideWithTitle
		title: 'Creating a Game, Idea 1: Inheritance'
		content: (PHWidget new withLayout ; add: content)