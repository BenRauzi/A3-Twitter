/*
	Author: Ben Harris
	Description: Sends the message from the UI. Handles name / colour.
*/

NZF_sendMessage = {
	_text = ctrlText ((findDisplay 5002) displayCtrl 1400);

	if (count _text > 100) exitWith {
		hint "No Tweets < 100 characters";
	};
	closeDialog 0;
	[name player, _text, profileNamespace getVariable ['twitterColour', "1"]] call NZF_addMessage;
};
