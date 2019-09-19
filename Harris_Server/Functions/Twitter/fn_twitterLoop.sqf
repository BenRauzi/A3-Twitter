/*
	Author: Ben Harris
	Description: Loops to keep twitter menu up to date (less costly than remoteExec)
*/
NZF_twiterLoop = {
	_twitterMessages = missionNamespace getVariable ["NZF_twitterMessages", []];
	while {True} do {
		if (str _twitterMessages != twitterMessages) then {
			twitterMessages = str _twitterMessages;
			if (isNull (uiNameSpace getVariable ["NZF_TwitterFeed", displayNull])) then {
				5 cutRsc ["NZF_TwitterFeed","PLAIN"];
			};
			if (count _twitterMessages == 0) then {
				5 cutText ["","PLAIN"];
			} else {
				[_twitterMessages] call NZF_updateTwitter;
			};
		};
		sleep 1;
	};
	
};