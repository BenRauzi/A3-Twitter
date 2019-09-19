/*
	Author: Ben Harris
	Description: Updates twitter system on the client
*/
NZF_updateTwitter = {
	disableSerialization;
	params["_twitterMessages"];

	_displayText = "";
	{
		_displayText = _displayText + _x;
	} forEach _twitterMessages;

	_twitterEntry = ((findDisplay 5002) displayCtrl 1400);
	if !(isNull _twitterEntry) then {
		_twitterEntry ctrlSetPosition [-0.705,0.84+0.04*(count _twitterMessages-1)];
		_twitterEntry ctrlCommit 0;
		if (isNull (uiNameSpace getVariable ["NZF_TwitterFeed", displayNull])) then {
			((findDisplay 5002) displayCtrl 1000) ctrlShow true;
		};
	};
	((uiNameSpace getVariable ["NZF_TwitterFeed", displayNull]) displayCtrl 1100) ctrlSetStructuredText parseText _displayText;
};
