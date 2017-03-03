#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Вычисление простых чисел

=head1 run ($x, $y)

Функция вычисления простых чисел в диапазоне [$x, $y].
Пачатает все положительные простые числа в формате "$value\n"
Если простых чисел в указанном диапазоне нет - ничего не печатает.

Примеры: 

run(0, 1) - ничего не печатает.

run(1, 4) - печатает "2\n" и "3\n"
=cut

sub run {
    my ($x, $y) = @_;
    my $flag2 = 0;
    for (my $i = $x; $i <= $y; $i++) {
        # ...
        # Проверка, что число простое
        # ...
#        print "\nstart i=$i \n";
        my $flag = 0;
        for (my $j = 2; $j <= $y; $j++) {
            if ($i%$j==0) {
                $flag++;
#        my $asd = $i%$j; 
#        print "i=$i j=$j flag=$flag ost="; 
#        print "$asd\t";
             }
        }
        if ($flag==1) {
            if ($flag2==1) { 
                print " ";
            }
            $flag2=1;
            print "$i";
        }
#        else {print "flag=$flag \t";}
#    }
# da 2 3 5 
# 6 6/2 6/3 6/4 6/5 6/6
#   0   0   2   1   0
# 7 7/2 7/3 7/4 7/5 7/6 7/7
#   1   1   3   2   1   0 
    }
}
#run(1, 10);
1;
