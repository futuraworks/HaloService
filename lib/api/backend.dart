import 'package:hasura_connect/hasura_connect.dart';


//'x-hasura-admin-secret': 'hasuraarusah'
class BackEnd {
  HasuraConnect api_1 = HasuraConnect(

    "https://hasura-futuraworks.cloud.okteto.net/v1/graphql",
    headers: {'x-hasura-admin-secret': 'hasuraarusah'},
  );

  // hasuraInit(k,v) => api_1.addHeader(k, v);

  Snapshot hasuraSubs(subs){
    return api_1.subscription(subs);
  }
  Future hasuraFetch(query){
    return api_1.query(query);
  }
}
