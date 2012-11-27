#!/usr/bin/env perl
use strict;
use warnings;
use autodie;
use DBI;
use Teng::Schema::Dumper;
use FindBin;

my $dbh = DBI->connect('dbi:SQLite:dbname=sample/app.db') or die;
print Teng::Schema::Dumper->dump(
    dbh       => $dbh,
    namespace => 'My::DB',
);
