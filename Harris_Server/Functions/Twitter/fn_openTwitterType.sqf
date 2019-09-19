/*
	Author: Ben Harris
	Description: Opens the twitter typing menu
*/
NZF_openTwitterType = {
	if !(player getVariable ["NZF_TwitterEnabled",true]) exitWith {}; //Stops players restrained sending messages
	
	createDialog "NZF_twitterType";	

	if !(isNull (uiNameSpace getVariable ["NZF_TwitterFeed",displayNull])) then {
		ctrlShow [1000, false];
	} else {
		ctrlShow [1000, true];
	};

	_listBox = ((findDisplay 5002) displayCtrl 1400);

	_count = (count NZF_TwitterMessages-1);
	if (count NZF_TwitterMessages == 0) then {
		_count = 0;
	};


	_listBox ctrlSetPosition [-0.705,0.84+0.04*(count NZF_TwitterMessages-1)];
	_listBox ctrlCommit 0;
};
