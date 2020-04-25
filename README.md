#  A3-Twitter

### Install Instructions:
- Pack `Harris_Client` into a PBO file with PboProject (PBOManager works but `Verify Signatures` does not work with PBOManager-packed PBOs)
- Pack `Harris_Server` into a PBO file with any PBO Tool (PBOManager or PBOProject)
- Load the Client PBO on the Client mods and the Server Pbo on the Server Mods

### Setup Instructions:
- Add `[] call Harris_clientInit;` to your init.sqf or initplayerlocal.sqf after `waitUntil{!isNull (findDisplay 46)};` (in your mission file)
- Disable chat channels in the `description.ext`

#### Other:

- If you want a mission-file version of these files please open an issue on Github and I'll make sure to add one in.
