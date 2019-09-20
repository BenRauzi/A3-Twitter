/*
	Author: Ben Harris
	Description: Handles adding a message
*/
NZF_addMessage = {
	params["_name", "_message", ["_colour", "default"]];
	
	switch(_colour)do
	{
		case 'Red':
		{
			_colour = "#FF0000"
		};
		case 'Green':
		{
			_colour = "#42FF00"
		};
		case 'Gold':
		{
			_colour = "#FFD700"
		};
		case 'Blue':
		{
			_colour = "#00C1FF"
		};
		default
		{
			_colour = "#22ffd9"
		};
	};

	_message= format["<t size='1' color='%3' align='left' font='PuristaBold'>%1: </t><t size='1' font='PuristaBold' align='left' color='#bab6b7'>%2</t> <br/>", _name, _message, _colour];

	if (isMultiplayer) then {
		[_message] remoteExecCall ["NZF_handleTwitter", 2];

	} else {
		[_message] call NZF_handleTwitter;
	};
	_twitterMessages = missionNamespace getVariable ["NZF_twitterMessages", []];
	test = (missionNamespace getVariable ["NZF_twitterMessages", []]);
	test2 = _message;
	[_twitterMessages] call NZF_updateTwitter;
};