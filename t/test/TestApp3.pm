# $Id: TestApp3.pm,v 1.2 2001/08/11 18:43:47 jesse Exp $

package TestApp3;

use strict;


; use CGI::Builder
  qw| CGI::Builder::CgiAppAPI
    |
;

sub setup {
	my $self = shift;

	$self->start_mode('default_mode');

	$self->mode_param(\&set_up_runmode);

	$self->run_modes(
		'subref_modeparam'	=> \&subref_modeparam_meth,
		'0'			=> \&blank_mode,
		'default_mode'		=> \&default_mode_meth,
	);
}


sub set_up_runmode {
	my $self = shift;
	my $q = $self->query();
	my $rm = $q->param('go_to_mode');

	return undef if ($rm eq 'undef_rm');

	return $rm;
}



############################
####  RUN MODE METHODS  ####
############################

sub subref_modeparam_meth {
	my $self = shift;

	return "Hello World: subref_modeparam OK";
}


sub blank_mode {
	my $self = shift;

	return "Hello World: blank_mode OK";
}


sub default_mode_meth {
	my $self = shift;

	return "Hello World: default_mode OK";
}



1;

