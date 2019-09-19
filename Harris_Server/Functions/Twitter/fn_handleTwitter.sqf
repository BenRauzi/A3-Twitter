/*
	Author: Ben Harris
	Description: Server-side handler for twitter messages (doing this serverside ensures synchronisation)
*/

NZF_handleTwitter = {
	params["_message"];

	_twitterMessages = missionNamespace getVariable ["NZF_twitterMessages", []];
	if (count _twitterMessages > 6) then {
		_twitterMessages deleteAt 0;
	};

	_twitterMessages pushBack _message;
	missionNamespace setVariable ["NZF_twitterMessages", _twitterMessages, true];

	[_message] spawn {
		sleep 20;
		_messages = missionNamespace getVariable ["NZF_twitterMessages", []];

		if ((_this select 0) in _messages) then {
			_messages deleteAt 0;
			missionNamespace setVariable ["NZF_twitterMessages",  _messages, true];
		};
	};
};