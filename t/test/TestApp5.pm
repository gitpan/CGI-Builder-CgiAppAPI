# $Id: TestApp5.pm,v 1.1 2001/08/11 18:43:47 jesse Exp $

package TestApp5;

use strict;


; use CGI::Builder
  qw| CGI::Builder::CgiAppAPI
    |
;

sub setup {
	my $self = shift;

	$self->start_mode('nomode');

	$self->mode_param('rm');

	$self->run_modes(
		'basic_test1'		=> 'basic_test1',
		'basic_test2'		=> 'badmode',
	);

	# Add more run-modes.  All should work now
	$self->run_modes(
		'basic_test2'		=> 'basic_test2',
		'basic_test3'		=> 'basic_test3',
	);
}



############################
####  RUN MODE METHODS  ####
############################

sub basic_test1 {
	my $self = shift;

	return "Hello World: basic_test1";
}


sub basic_test2 {
	my $self = shift;

	return "Hello World: basic_test2";
}


sub basic_test3 {
	my $self = shift;

	return "Hello World: basic_test3";
}


1;

