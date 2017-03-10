package SecretSanta;

use 5.010;
use strict;
use warnings;
use DDP;

use List::Util qw(shuffle);

sub calculate {
	my @members = @_;
	my @res;
	my @resArray;
	# ...
	#	push @res,[ "fromname", "toname" ];
	# ...
        if ($#members < 2) {
		die "There is no solution!";
	}
	if ($#members == 2){
		if ($members[0] ne "ARRAY"){
			die "There is no solution!";
		}
		if ($members[1] ne "ARRAY"){
			die "There is no solution!";
		}
	}
        foreach my $mem (shuffle(@members)) {
		if (ref($mem) eq "ARRAY") {
			push @resArray,shuffle(@$mem);
		}
		unless (ref($mem)) {
			push @resArray,$mem;
		}
	}
	for my $i (0 .. $#resArray) {
		push @res, [$resArray[$i], $resArray[($i+2)%$#resArray]]
	}
	return @res;
}
1;
