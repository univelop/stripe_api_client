// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_type_query_parameter_type.dart';

/// auto generated
/// <p>Returns a list of your active prices, excluding <a href="/docs/products-prices/pricing-models#inline-pricing">inline prices</a>. For the list of inactive prices, set <code>active</code> to false.</p>
class PricesRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return prices that are active or inactive (e.g., pass `false` to list all inactive prices).
  bool? active;

  ///  A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
  int? created;

  ///  Only return prices for the given currency.
  String? currency;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  Only return the price with these lookup_keys, if any exist. You can specify up to 10 lookup_keys.
  /// @QueryParameter('lookup_keys')
  List<String>? lookupKeys;

  ///  Only return prices for the given product.
  String? product;

  ///  Only return prices with these recurring fields.
  String? recurring;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  Only return prices of type `recurring` or `one_time`.
  GetTypeQueryParameterType? type_;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'active': active,
      'created': created,
      'currency': currency,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'lookup_keys': lookupKeys,
      'product': product,
      'recurring': recurring,
      'starting_after': startingAfter,
      'type_': type_,
    };
  }
}
