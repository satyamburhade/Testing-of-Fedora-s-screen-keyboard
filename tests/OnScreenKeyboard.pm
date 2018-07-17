use base "basetest";
use strict;
use testapi;

sub run {
    my $START_AFTER_TEST="installationProcess.pm";
    #Starting the on screen keyboard from settings
    send_key "super";
    wait_idle 5;
    type_string "Settings";
    wait_idle 5;
    assert_screen "SettingsScreen";
    send_key "ret";
    assert_screen "UniversalAccessScreen",30;
    
    
}
sub test_flags {
    
    return { fatal => 1 };
}

1;








