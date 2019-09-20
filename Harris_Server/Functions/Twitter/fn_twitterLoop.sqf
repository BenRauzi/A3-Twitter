/*
	Author: Ben Harris
	Description: Loops to keep twitter menu up to date (less costly than remoteExec)
*/
NZF_twitterLoop = {
	while {True} do { //Read header
		currentMessages = missionNamespace getVariable ["NZF_twitterMessages", []];
		if (str currentMessages != twitterMessages) then { //SQF list == reference type
			twitterMessages = str currentMessages;
			if (isNull (uiNameSpace getVariable ["NZF_TwitterFeed", displayNull])) then { //Shows twitter UI if hidden
				5 cutRsc ["NZF_TwitterFeed","PLAIN"];  
			}; 
			if (count currentMessages == 0) then { //hides the menu if no messages left
				5 cutText ["","PLAIN"];
			} else {
				[currentMessages] call NZF_updateTwitter; //updates menu after checks handled
			};
		};
		sleep 1;
	};
};