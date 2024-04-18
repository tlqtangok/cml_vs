=pod
use Win32::API;

my $dll = Win32::API->new('./dll.dll', 'int add(int, int)', 'int');
if (!$dll)
{
die "no dll\n";
}

my $result = $dll->Call(10, 20);  

print "Result: $result\n";  # 打印函数返回值
=cut





***************************** 
cannot install FFI::Platypus;
*****************************

use FFI::Platypus;

my $ffi = FFI::Platypus->new( api => 1 );

$ffi->lib('dll.dll');

$ffi->attach( add => ['int', 'int'] => 'int' );

my $result = add(2, 3);
print "Result: $result\n";

