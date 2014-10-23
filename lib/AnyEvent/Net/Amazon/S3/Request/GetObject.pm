package AnyEvent::Net::Amazon::S3::Request::GetObject;

# ABSTRACT: An internal class to get an object
our $VERSION = 'v0.02.0.58'; # VERSION

use strict;
use warnings;

use Module::AnyEvent::Helper::Filter -as => __PACKAGE__,
        -target => substr(__PACKAGE__, 10),
        -transformer => 'Net::Amazon::S3';

1;

__END__

=pod

=head1 NAME

AnyEvent::Net::Amazon::S3::Request::GetObject - An internal class to get an object

=head1 VERSION

version v0.02.0.58

=head1 SYNOPSIS

  my $http_request = AnyEvent::Net::Amazon::S3::Request::GetObject->new(
    s3     => $s3,
    bucket => $bucket,
    key    => $key,
    method => 'GET',
  )->http_request;

=head1 DESCRIPTION

This module is the same as L<Net::Amazon::S3::Request::GetObject>, except for its name.

=for test_synopsis no strict 'vars';

=head1 METHODS

=head2 http_request

This method returns a HTTP::Request object.

=head2 query_string_authentication_uri

This method returns query string authentication URI.

=head1 AUTHOR

Yasutaka ATARASHI <yakex@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Yasutaka ATARASHI.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
