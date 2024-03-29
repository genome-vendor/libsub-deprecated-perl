package Test::Sub::Deprecated;
{
  $Test::Sub::Deprecated::VERSION = '0.003002';
}
use base qw(Sub::Deprecated);
use vars qw($version $message $scalar @list);

$version = 1.0.5;
$message = 'Use something not deprecated instead.';
$scalar = 'MyScalar';
@list = ('My', 'List');

sub something {
    if (wantarray) {
        return @list;
    } else {
        return $scalar;
    }
}

sub something_deprecated : Deprecated($version) {
    something();
}

sub something_deprecated_with_message : Deprecated($version, $message) {
    something();
}

sub caller : Deprecated($version) {
    return caller;
}

sub args_passthrough : Deprecated($cersion) {
    return @_;
}
