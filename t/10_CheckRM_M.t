#!perl -w
; use strict
; use Test::More tests => 1
; use CGI

; our $TM
; use lib 'test';


; BEGIN
   { chdir './t'
   ; if ( eval { require Template::Magic })
      { $TM = 1
      ; require 'CheckRM_magic.pm'
      }
   }


; SKIP:
   { skip("Template::Magic is not installed", 1)
     unless $TM

   ; my $ap2 = MagicAppl1->new()
   ; my $o2 = $ap2->capture('process')
   ; ok(  $$o2 =~ /start--><span/ )
   }







