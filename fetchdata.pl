#!/usr/bin/env perl


my @lines = `cat /proc/net/dev`;
my @rx_fields = qw(bytes packets errs drop fifo frame compressed multicast);
my @tx_fields = qw(bytes packets errs drop fifo frame compressed);

for my $line (@lines) {
  next if $line !~ /:/;

  $line =~ s/^\s+|\s+$//g;

  my ($iface, %rx, %tx);

  ($iface, @rx{@rx_fields}, @tx{@tx_fields}) = split /[: ]+/, $line;

if($iface eq "eno1.4000"){
foreach(sort keys %rx)
{
if ($_ =~ /packets/)
        {
        print "$rx{$_}\n";
        $eno1packets=$rx{$_};
        }
if (
}
}
}

