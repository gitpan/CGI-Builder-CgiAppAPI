#!perl -w
; use strict
; use Test::More tests => 1
; use CGI

; our $TM
; use lib 'test';

; BEGIN
   { chdir './t'
   ; require  'CheckRM_basic.pm'
   }
   



# index.tmpl
; my $ap1 = Appl1->new()

; my $o1 = $ap1->capture('process')

; ok(  $$o1 =~ /err_email <span/
    && $$o1 !~ /index content/
    )
    

