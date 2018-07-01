initialize-release
createInheritanceSlide

	| content entityBody entityCard entityContent entityHeader dwarfCard dwarfWizardCard wizardCard wizardBody wizardContent wizardHeader dwarfBody dwarfContent dwarfHeader dwarfWizardBody dwarfWizardContent dwarfWizardHeader |
	content := PHPage column.
	
	entityContent := (PHWidget new
		withLayout;
		vertical: true;
		add: (PHLabel text: 'Attributes:');
		add: (PHLabel text: '- walking speed');
		add: (PHLabel text: '- walking direction');
		add: (PHLabel text: '- health');
		add: (PHLabel text: 'Methods:');
		add: (PHLabel text: '- walk()')).
	entityBody := PHCollapsible new add: entityContent.
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
	wizardBody := PHCollapsible new add: wizardContent.
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
	dwarfBody := PHCollapsible new add: dwarfContent.
	
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
	dwarfWizardBody := PHCollapsible new add: dwarfWizardContent.
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
		add: entityCard;
		add: (PHPage row
			add: wizardCard;
			add: (PHPage column
				add: (PHWidget new minSize: (100@100) withScalingFactor );
				add: dwarfWizardCard);
			add: dwarfCard).

	^ ECSSlideWithTitle
		title: 'inheritance'
		content: (PHWidget new withLayout ; add: content)