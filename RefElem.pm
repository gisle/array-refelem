package Array::RefElem;

use strict;
use vars qw(@ISA @EXPORT_OK $VERSION);

require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
@EXPORT_OK = qw(av_store av_push hv_store);

$VERSION = '0.02';

Array::RefElem->bootstrap($VERSION);

1;

__END__

=head1 NAME

Array::RefElem - Set up array elements as aliases

=head1 SYNOPSIS

 use Array::RefElem qw(av_store av_push hv_store);

 av_store(@a, 1, $a);
 av_push(@a, $a);
 hv_store(%h, $key, $a);

=head1 DESCRIPTION

This module give direct access to some of the internal perl routines
that let you store things in arrays and hashes.  The following
functions are available:

=over

=item av_store(@array, $index, $value)

Stores $value inside @array at the indicated $index.  After this call
$array[$index] and $value will denote the same thing.

=item av_push(@array, $value)

Push $value onto the @array.  After this call $array[-1] and $value
will denote the same thing.

=item hv_store(%hash, $key, $value);

Store $value in the %hash with the given $key. After this call
$hash{$key} and $value will denote the same thing.

=back

=head1 SEE ALSO

L<perlguts>

=head1 COPYRIGHT

Copyright 2000 Gisle Aas.

This library is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut
