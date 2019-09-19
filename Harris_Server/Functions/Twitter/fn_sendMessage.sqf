/*
	Author: Ben Harris
	Description: Sends the message from the UI
*/

NZF_sendMessage = {
	_text = ctrlText ((findDisplay 5002) displayCtrl 1400);
	closeDialog 0;
	[name player, _text, profileNamespace getVariable ['twitterColour', "1"]] call NZF_addMessage;
};
