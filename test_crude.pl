#!/usr/bin/perl -w

use MongoDB;
 
my $client     = MongoDB::MongoClient->new(host => 'localhost', port => 27017);
my $database   = $client->get_database( 'foo' );
my $collection = $database->get_collection( 'bar' );
my $id         = $collection->insert({ some => 'data' });
my $data       = $collection->find_one({ _id => $id });


print $data."\n";