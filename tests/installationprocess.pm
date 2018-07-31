use base "basetest";
use strict;
use testapi;

sub run
{
	
	assert_screen "bootloader",30;

	send_key "ret";

	assert_screen "WelcomeToFedoraScreen",10000;
	assert_and_click "InstallToHardDrive";


	assert_screen "InstallationLanguageSelection",10000;
	type_string "English",100;

	#To select the English as installation language
        assert_and_click "SelectEnglishLanguage";
	assert_and_click "ClickContinue";
	
	#Asserting Installation summary, Adding keyboard layout, Setting date & time & Setting up installation destination
	assert_screen "InstallationSummary",100;
	assert_and_click "ClickOnKeyboard";
	assert_screen "SelectingKeyboardScreen";
	assert_and_click "PlusSign";
	type_string "English",60;
	assert_and_click "English(Australian)";
	assert_and_click "Add";
	assert_and_click "Done";
	wait_idle 5;

	#Choosing installation destination
	assert_and_click "ClickInstallationDestination";
	assert_screen "InstallationDestinationScreen";
	assert_and_click "Done";

	wait_idle 15;
	#To begin installation
	assert_and_click "BeginInstallation";
	assert_screen "ConfigurationInstallationScreen",100;
	#wait 12 min approx to complete installation
       	wait_idle 900;	
	#After installation completion
	assert_and_click "QuitButton";

	#Rebooting the system to finalize installation and creating user
	send_key "super";
	type_string "Terminal",10;
	wait_idle 5;
	assert_and_click "SelectTerminal";
	wait_idle 20;
	type_string "reboot";
	wait_idle 10;
	send_key "ret";

	#After rebootinh going through Setup screen 
	assert_screen "SetupScreen",300;
	assert_and_click "WelcomeNextButton";

	#Priacy screen
	assert_screen "Privacy",25;
	assert_and_click "PrivacyNextButton";

	#Online accounts screen, we are just skipping it
	assert_screen "OnlineAccounts",25;
	assert_and_click "AccountSkipButton";

	#Setting up username i.e About you screen
	assert_screen "UserSetup",25;
	wait_idle 20;
	type_string "Univarsal";
	assert_and_click "UserNextButton";


	#Password setup screen
	assert_screen "PasswordScreen";
	type_password "UniversalFedora";
	send_key "tab";
	type_password "UniversalFedora";
	assert_and_click "PasswordNextButton";

	#Ready to use Fedora 28
	assert_screen "ReadyToGo",60;
	assert_and_click "StartUsingFedora";

	#Logging in 
	assert_screen "LoginScree",400;
	assert_and_click "ClickUnversalAccess";
	wait_idle 10;
	type_password "UniversalFedora";
	assert_and_click "SignInButton";
	assert_screen "DesktopAfterLogin",100;

	#Power off the system
	wait_idle 10;
	send_key "super";
	wait_idle 5;
        type_string "Terminal",10;
        wait_idle 5;
        assert_and_click "SelectTerminal";
        wait_idle 10;
        type_string "poweroff";
        wait_idle 10;
        send_key "ret";
	wait_idle 200;



}
sub test_flags
{
	return {fatal => 1};
}

1;
