
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Use the Amazon S3 - Simple Storage Service",
  "AUTHOR" => "Yasutaka ATARASHI <yakex\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Digest::MD5::File" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "File::stat" => 0,
    "LWP::Simple" => 0,
    "Test::Exception" => 0,
    "Test::More" => 0,
    "vars" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "AnyEvent-Net-Amazon-S3",
  "EXE_FILES" => [
    "bin/s3cl"
  ],
  "LICENSE" => "perl",
  "NAME" => "AnyEvent::Net::Amazon::S3",
  "PREREQ_PM" => {
    "AnyEvent" => 0,
    "AnyEvent::HTTP::LWP::UserAgent" => "0.09",
    "AnyEvent::HTTP::LWP::UserAgent::Determined" => 0,
    "Carp" => 0,
    "Data::Stream::Bulk::AnyEvent" => 0,
    "Digest::MD5" => 0,
    "File::Find::Rule" => 0,
    "Getopt::Long" => 0,
    "MIME::Types" => 0,
    "Module::AnyEvent::Helper" => 0,
    "Module::AnyEvent::Helper::Filter" => 0,
    "Module::AnyEvent::Helper::PPI::Transform" => 0,
    "Net::Amazon::S3" => 0,
    "PPI::Transform::PackageName" => 0,
    "Path::Class" => 0,
    "Pod::Usage" => 0,
    "Term::Encoding" => 0,
    "Term::ProgressBar::Simple" => 0,
    "parent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "v0.01.0.57",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



