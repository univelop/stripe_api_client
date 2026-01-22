// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>Returns a list of your products. The products are returned sorted by creation date, with the most recently created products appearing first.</p>
class ProductsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return products that are active or inactive (e.g., pass `false` to list all inactive products).
  bool? active;

  ///  Only return products that were created during the given date interval.
  int? created;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  Only return products with the given IDs. Cannot be used with [starting_after](https://api.stripe.com#list_products-starting_after) or [ending_before](https://api.stripe.com#list_products-ending_before).
  List<String>? ids;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Only return products that can be shipped (i.e., physical, not digital products).
  bool? shippable;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return products with the given url.
  String? url;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'active': active,
      'created': created,
      'ending_before': endingBefore,
      'expand': expand,
      'ids': ids,
      'limit': limit,
      'shippable': shippable,
      'starting_after': startingAfter,
      'url': url,
    };
  }
}
