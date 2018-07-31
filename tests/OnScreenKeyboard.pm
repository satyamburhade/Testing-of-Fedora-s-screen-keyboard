use base "basetest";
use strict;
use testapi;

sub run {
    
    #Starting the on screen keyboard from settings
    assert_screen "LoginScreen",300;
    assert_and_click "ClickUniversalAccount";
    type_password "UniversalFedora";
    assert_and_click "SignIn";
    wait_idle 15;
    assert_and_click "ClickCloseGnome";
    send_key "super";
    wait_idle 10;
    type_string "Settings";
    send_key "ret";
    assert_screen "SettingsScreen",1000;
    assert_and_click "ClickUniversalAccess";
    send_key "ret";
    assert_and_dclick "UniversalAccessScreenBar",3000;
    mouse_dclick "UniversalTitalBar";
    assert_and_click "ClickScreenKeyboardToggle";
    assert_and_click "ClickCloseOption";
    #Now open any editor 
    send_key "super";
    wait_idle 5;
    type_string "gedit";
    send_key "ret";
    wait_idle 10;
    
    #Click and hold the key a for 2sec.
    assert_and_click "ClickAndHoldA","right",30,2;
    #selecting all the variatons of character a
    assert_and_click "aWithSlant";
	assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "aWithRightSlant";
	assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "aWithCap";
	assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "aWithTwoDots";
	assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "aLikee";
    	assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "aWithTilde";
	assert_and_click "ClickAndHoldA","right",30,2;    
    assert_and_click "aWithSingleDot";
    	assert_and_click "ClickAndHoldA","right",30,2;
    assert_and_click "aWithBar";


    #Click and hold the key e for 2sec.
    assert_and_click "ClickAndHoldE","right",30,2;
    #selecting all the variatons of character e
    assert_and_click "eWithLeftSlant";
	assert_and_click "ClickAndHoldE","right",30,2;
    assert_and_click "eWithRightSlant";
	assert_and_click "ClickAndHoldE","right",30,2;
    assert_and_click "eWithCap";
	assert_and_click "ClickAndHoldE","right",30,2;
    assert_and_click "eWithTwoDots";
	assert_and_click "ClickAndHoldE","right",30,2;
    assert_and_click "eWithBar";
   
    #Click and hold the key i for 2sec.
    assert_and_click "ClickAndHoldI","right",30,2;
    #selecting all the variatons of character i
    assert_and_click "iWithCap";
	assert_and_click "ClickAndHoldI","right",30,2;
    assert_and_click "iWithTwoDots";
	assert_and_click "ClickAndHoldI","right",30,2;
    assert_and_click "iWithRightSlant";
	assert_and_click "ClickAndHoldI","right",30,2;
    assert_and_click "iWithBar";
	assert_and_click "ClickAndHoldI","right",30,2;
    assert_and_click "iWithLeftSlant";

    #Click and hold the key o for 2sec.
    assert_and_click "ClickAndHoldO","right",30,2;
    #selecting all the variatons of character o
    assert_and_click "oWithCap";
	assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "oWithTwoDots";
	assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "oWithLeftSlant";
	assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "oWithRightSlant";
	assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "oWithE";
	assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "oLikePie";
	assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "oWithBar";
	assert_and_click "ClickAndHoldO","right",30,2;
    assert_and_click "oWithTilde";
    
    #Click and hold the key u for 2sec.
    assert_and_click "ClickAndHoldU","right",30,2;
    #selecting all the variatons of character u
    assert_and_click "uWithCap";
	assert_and_click "ClickAndHoldU","right",30,2;
    assert_and_click "uWithTwoDots";
	assert_and_click "ClickAndHoldU","right",30,2;
    assert_and_click "uWithLeftSlant";
	assert_and_click "ClickAndHoldU","right",30,2;
    assert_and_click "uWithRiguhtSlant";
	assert_and_click "ClickAndHoldU","right",30,2;
    assert_and_click "uWithBar";
    

      
    
 

    
    
}
sub test_flags {
    
    return { fatal => 1 };
}

1;








