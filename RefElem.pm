package Array::RefElem;

use strict;
use vars qw(@ISA @EXPORT $VERSION);

require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
@EXPORT_OK = qw();

$VERSION = '0.01';

Array::RefElem->bootstrap($VERSION);

1;
