package Array::RefElem;

use strict;
use vars qw(@ISA @EXPORT_OK $VERSION);

require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
@EXPORT_OK = qw(av_store av_push hv_store);

$VERSION = '0.01';

Array::RefElem->bootstrap($VERSION);

1;

__END__

