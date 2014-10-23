requires "AnyEvent" => "0";
requires "AnyEvent::HTTP::LWP::UserAgent" => "0.10";
requires "AnyEvent::HTTP::LWP::UserAgent::Determined" => "0";
requires "Data::Stream::Bulk::AnyEvent" => "0";
requires "Module::AnyEvent::Helper" => "0";
requires "Net::Amazon::S3" => "0.60";
requires "filtered" => "0";
requires "parent" => "0";
requires "perl" => "5.006";

on 'test' => sub {
  requires "Digest::MD5::File" => "0";
  requires "File::Spec" => "0";
  requires "File::Temp" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "LWP::Simple" => "0";
  requires "Test::Exception" => "0";
  requires "Test::More" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.30";
};

on 'develop' => sub {
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::CPAN::Changes" => "0.19";
  requires "Test::CPAN::Meta" => "0";
  requires "Test::More" => "0";
  requires "Test::NoTabs" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
};
