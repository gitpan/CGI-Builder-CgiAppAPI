#!perl -w
; use strict
; use Test::More tests => 2
; use CGI

; our $TM
; use lib 'test';

; BEGIN
   { chdir './t'
   ; require  'CheckRM_basic.pm'
   ; if ( eval { require Template::Magic })
      { $TM = 1
      ; require 'CheckRM_magic.pm'
      }
   }

# index.tmpl
; my $ap1 = Appl1->new()

; my $o1 = $ap1->capture('process')

; ok(  $$o1 =~ /err_email <span/
    && $$o1 !~ /index content/
    )
    

; SKIP:
   { skip("Template::Magic is not installed", 1)
     unless $TM

   ; my $ap2 = MagicAppl1->new()
   ; my $o2 = $ap2->capture('process')
   ; ok(  $$o2 =~ /start--><span/ )
   }
