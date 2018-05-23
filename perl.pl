#!/usr/bin/perl

# $b = 0;
# $f = '';

# open($rq, "./file.txt") or die "";

# while($d = <$rq>) {
#   $f .= $d;
# }

# # while($f =~ /valerich123/g) {
# #   $b++;
# # }

# print "perl $b\n";

# close $rq;

sub shellsSort {
	my ($arr) = @_;
	my $n     = $#$arr + 1;
    my $gap   = int($n/2);
    my $i     = 0;
    my $j     = 0;
    my $temp  = undef;
    
    while ($gap > 0) {
        $i = $gap;
        while ($i < $n) {
            $temp = @$arr[$i];
            $j = $i;
            while ($j >= $gap && @$arr[$j - $gap] > $temp) {
                @$arr[$j] = @$arr[$j - $gap];
                $j = $j - $gap;
            }
            @$arr[$j] = $temp;
            $i = $i + 1;
        }
        $gap = int($gap/2);
    }
}

my @a = (9, 8, 7, 6, 5, 4, 3, 2, 1, 0);

for($c = 0; $c < 10000000; $c++) {
  @a = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0];
  # @a = sort @a;
  @a = shellsSort(\@a);
}

print "perl 123\n";

1;