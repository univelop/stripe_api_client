// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// <p>List events, going back up to 30 days. Each event data is rendered according to Stripe API version at its creation time, specified in <a href="https://docs.stripe.com/api/events/object">event object</a> <code>api_version</code> attribute (not according to your current Stripe API version or <code>Stripe-Version</code> header).</p>
class EventsRequestBuilderGetQueryParameters
    implements AbstractQueryParameters {
  ///  Only return events that were created during the given date interval.
  int? created;

  ///  Filter events by whether all webhooks were successfully delivered. If false, events which are still pending or have failed all delivery attempts to a webhook endpoint will be returned.
  /// @QueryParameter('delivery_success')
  bool? deliverySuccess;

  ///  A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
  /// @QueryParameter('ending_before')
  String? endingBefore;

  ///  Specifies which fields in the response should be expanded.
  List<String>? expand;

  ///  A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  int? limit;

  ///  A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
  /// @QueryParameter('starting_after')
  String? startingAfter;

  ///  A string containing a specific event name, or group of events using * as a wildcard. The list will be filtered to include only events with a matching event property.
  String? type_;

  ///  An array of up to 20 strings containing specific event names. The list will be filtered to include only events with a matching event property. You may pass either `type` or `types`, but not both.
  List<String>? types;

  /// Extracts the query parameters into a map for the URI template parsing.
  @override
  Map<String, dynamic> toMap() {
    return {
      'created': created,
      'delivery_success': deliverySuccess,
      'ending_before': endingBefore,
      'expand': expand,
      'limit': limit,
      'starting_after': startingAfter,
      'types': types,
      'type_': type_,
    };
  }
}
