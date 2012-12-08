#!perl

BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}


# This test is generated by Dist::Zilla::Plugin::Test::Kwalitee::Extra
use strict;
use warnings;
use Test::More;   # needed to provide plan.
eval "use Test::Kwalitee::Extra";

plan skip_all => "Test::Kwalitee::Extra required for testing kwalitee: $@" if $@;
