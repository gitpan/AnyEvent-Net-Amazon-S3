package AnyEvent::Net::Amazon::S3::Client::Bucket;

# ABSTRACT: An easy-to-use Amazon S3 client bucket
our $VERSION = 'v0.03.0.60'; # VERSION

use strict;
use warnings;

use Module::AnyEvent::Helper::Filter -as => __PACKAGE__, -target => 'Net::Amazon::S3::Client::Bucket',
        -transformer => 'Net::Amazon::S3::Client::Bucket',
        -translate_func => [qw(_create delete acl location_constraint delete_multi_object)],
        -replace_func => [qw(_send_request _send_request_content _send_request_xpc)],
        -exclude_func => [qw(list)]
;

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

AnyEvent::Net::Amazon::S3::Client::Bucket - An easy-to-use Amazon S3 client bucket

=head1 VERSION

version v0.03.0.60

=head1 SYNOPSIS

  # return the bucket name
  print $bucket->name . "\n";

  # return the bucket location constraint
  print "Bucket is in the " . $bucket->location_constraint . "\n";

  # return the ACL XML
  my $acl = $bucket->acl;

  # list objects in the bucket
  # this returns a L<Data::Stream::Bulk> object which returns a
  # stream of L<AnyEvent::Net::Amazon::S3::Client::Object> objects, as it may
  # have to issue multiple API requests
  my $stream = $bucket->list;
  until ( $stream->is_done ) {
    foreach my $object ( $stream->items ) {
      ...
    }
  }

  # or list by a prefix
  my $prefix_stream = $bucket->list( { prefix => 'logs/' } );

  # returns a L<AnyEvent::Net::Amazon::S3::Client::Object>, which can then
  # be used to get or put
  my $object = $bucket->object( key => 'this is the key' );

  # delete the bucket (it must be empty)
  $bucket->delete;

=head1 DESCRIPTION

This module represents buckets.

This module provides the same interface as L<Net::Amazon::S3::Client::Bucket>.
In addition, some asynchronous methods returning AnyEvent condition variable are added.

=for test_synopsis no strict 'vars'

=head1 METHODS

All L<Net::Amazon::S3::Client::Bucket> methods are available.
In addition, there are the following asynchronous methods.
Arguments of the methods are identical as original but return value becomes L<AnyEvent> condition variable.
You can get actual return value by calling C<shift-E<gt>recv()>.

=over 4

=item acl_async

=item delete_async

=item list_async

=item location_constraint_async

=item delete_multi_object_async

=back

=head2 list

In addition to described in L<Net::Amazon::S3::Client::Bucket>,
C<max_keys> and C<marker> options can be accepted.

=for Pod::Coverage object

=head1 AUTHOR

Yasutaka ATARASHI <yakex@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Yasutaka ATARASHI.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
