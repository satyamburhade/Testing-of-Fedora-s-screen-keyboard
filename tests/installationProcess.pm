use base "basetest";
use strict;
use testapi;

sub run
{
	
	assert_screen "bootloader",30;

	send_key "ret";

	assert_screen "WelcomeToFedoraScreen",10000;
	send_key "tab";
	send_key "ret";


	assert_screen "InstallationLanguageSelection",10000;
	type_string "English",100;

	#To select the English as installation language
	send_key "up";
	send_key "tab";
	send_key "tab";
	send_key "tab";
	send_key "tab";
	send_key "ret";

	assert_screen "InstallationSummary",10000;

	#To select the installation partition & keeping keyboard & region default
	wait_idle 10;
	send_key "tab";
        send_key "tab";
        send_key "tab";
        send_key "ret";
	wait_idle 10;
        send_key "ret";
	wait_idle 20;
        send_key "down";
	send_key "down";
        send_key "down";

        send_key "right";

        send_key "ret";
       
	#Software & other Stuff installation window
	assert_screen "ConfigurationInstallationScreen",500;
	
	#Wait for approx. 13 minutes to get installation complete
	wait_idle 800;
	
	#After installation completed pressing Quit button
	send_key "down";
	send_key "down";
	send_key "ret";
	
	#Back to desktop after installation
	assert_screen "FedoraInstallation",100;

	#Rebooting the system to finalize installation and creating user
	send_key "super";
	wait_idle 10;
	type_string "Terminal",100;
	wait_idle 10;
	send_key "ret";
	wait_idle 10;
	type_string "reboot";
	wait_idle 10;
	send_key "ret";

	#Going through Setup screen 
	assert_screen "SetupScreen",300;
	send_key "tab";
	send_key "tab";
	send_key "ret";

	#Priacy screen
	assert_screen "Privacy",15;
	wait_idle 10;
	send_key "ret";

	#Online accounts screen, we are just skipping it
	assert_screen "OnlineAccounts",15;
	wait_idle 10;
	send_key "right";
	send_key "ret";

	#Setting up username i.e About you screen
	assert_screen "UserSetup",15;
	wait_idle 10;
	type_string "Univarsal";
	hold_key "shift";
	send_key "tab";
	send_key "tab";
	release_key "shift";
	send_key "ret";

	#Password setup screen
	type_password "UniversalFedora";
	send_key "tab";
	type_password "UniversalFedora";
	hold_key "shift";
	send_key "tab";
	send_key "tab";
	release_key "shift";
	send_key "ret";

	#Ready to use Fedora 28
	assert_screen "ReadyToGo",60;
	send_key "ret";



}
sub test_flags
{
	return {fatal => 1};
}

1;
