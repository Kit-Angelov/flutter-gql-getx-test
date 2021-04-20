import "package:flutter_application_1/gql/gql_conf.dart";
import "package:flutter_application_1/gql/gql.dart";
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controllers/counter.dart';

class GQLProvider {
  GraphQLClient client = GraphQLConfiguration().client;
  var queries = Queries();

  getAll() async{
    QueryResult result = await client.query(
      QueryOptions(
        document: gql(queries.getAll())
      ),
    );
    final Counter c = Get.find();
    c.increment();
    print(result.data);
  }
}