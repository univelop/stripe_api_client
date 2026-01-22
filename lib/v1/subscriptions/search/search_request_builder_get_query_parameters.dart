// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Search for subscriptions you’ve previously created using Stripe’s <a href="/docs/search#search-query-language">Search Query Language</a>.Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operatingconditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be upto an hour behind during outages. Search functionality is not available to merchants in India.</p>
class SearchRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
  String? page;

  ///  The search query string. See [search query language](https://docs.stripe.com/search#search-query-language) and the list of supported [query fields for subscriptions](https://docs.stripe.com/search#query-fields-for-subscriptions).
  String? query;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'expand': expand,
      'limit': limit,
      'page': page,
      'query': query,
    };
  }
}
