/*
	Author: Ben Harris
	Description Sample Keyhandler for opening UI/sending messages
*/

NZF_keyHandler = {
	_ctrl = _this select 0;
	_shift = _this select 2;
	_ctrlKey = _this select 3;
	_alt = _this select 4;
	_handled = false;

	switch (_this select 1) do
	{
		case 28:
		{
			if (isNull (findDisplay 5002)) then { [] call NZF_openTwitterType; } else { [] call NZF_sendMessage }; true;
		};
	};

	_handled;
};
