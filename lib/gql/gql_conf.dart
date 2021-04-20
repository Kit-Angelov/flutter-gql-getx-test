import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';

class GraphQLConfiguration {
  static HttpLink httpLink = HttpLink(
    'https://api.spacex.land/graphql/',
  );

  GraphQLClient client = GraphQLClient(
    cache: GraphQLCache(store: InMemoryStore()),
    link: httpLink,
  );
}