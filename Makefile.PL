# This file uses the "Perlish" coding style
# please read http://perl.4pro.net/perlish_coding_style.html

; use ExtUtils::MakeMaker

; my $dist = 'CGI::Builder::CgiAppAPI'
; my $vers = '1.23'

; WriteMakefile
   ( NAME           => $dist
   , VERSION        => $vers
   , ( $] ge '5.005' )
     ? ( AUTHOR     => 'Domizio Demichelis - perl.4pro.net'
       , ABSTRACT   => 'Use CGI::Application API with CGI::Builder'
       )
     : ()
   , PREREQ_PM      => { 'CGI::Builder' => '1.2' }
   )


; 1
