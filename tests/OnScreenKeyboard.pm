use base "basetest";
use strict;
use testapi;

sub run {
    START_AFTER_TEST="installationProcess"
    #Starting the on screen keyboard from settings
    send_key "super";
    wait_idle 5;
    type_string "Settings";
    wait_idle 5;
    send_key "ret";
    assert_screen "UniversalAccess",30;
    
    

sub test_flags {
    
    return { fatal => 1 };
}

1;








