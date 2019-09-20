/*
	Author: Ben Harris
	Description: Main Initialisation File for the Client
*/

Harris_clientInit = {
	twitterMessages = str([]);

	(findDisplay 46) displayAddEventHandler ["KeyDown","_this call NZF_keyHandler"]; // merge into keyhandler

	[] spawn NZF_twitterLoop;
};

