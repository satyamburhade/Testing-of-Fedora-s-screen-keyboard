use base "basetest";
use strict;
use testapi;

sub run
{
	
	assert_screen "bootloader",15;

	send_key "ret";

	assert_screen "Welcome to Fedora Screen",300;
}
sub test_flags
{
	return {fatal => 1};
}

1;
