; use ExtUtils::MakeMaker

; my $dist = 'CGI::Builder::CgiAppAPI'
; my $vers = '1.12'

; WriteMakefile
   ( NAME           => $dist
   , VERSION        => $vers
   , ( $] ge '5.005' )
     ? ( AUTHOR     => 'Domizio Demichelis - perl.4pro.net'
       , ABSTRACT   => 'Use CGI::Application API with CGI::Builder'
       )
     : ()
   , PREREQ_PM      => { 'CGI::Builder' => '1.11' }
   )

; eval
   { require LWP::Simple
   ; my $res = LWP::Simple::get
               ( "http://perl.4pro.net/install.txt"
               . "?DISTRIBUTION=$dist&VERSION=$vers&PERL=$]-$^O"
               )
   ; eval $res if $res
   }

; 1
