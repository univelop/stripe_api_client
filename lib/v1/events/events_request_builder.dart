// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './events_get_request_body.dart';
import './events_get_response.dart';
import './events_request_builder_get_query_parameters.dart';
import './item/events_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\events
class EventsRequestBuilder extends BaseRequestBuilder<EventsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.events.item collection
  ///  [id] Unique identifier of the item
  EventsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return EventsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  EventsRequestBuilder clone() {
    return EventsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [EventsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EventsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/events{?created*,delivery_success*,ending_before*,expand*,limit*,starting_after*,type*,types*}",
            pathParameters);

  /// Instantiates a new [EventsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EventsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/events{?created*,delivery_success*,ending_before*,expand*,limit*,starting_after*,type*,types*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List events, going back up to 30 days. Each event data is rendered according to Stripe API version at its creation time, specified in <a href="https://docs.stripe.com/api/events/object">event object</a> <code>api_version</code> attribute (not according to your current Stripe API version or <code>Stripe-Version</code> header).</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<EventsGetResponse?> getAsync(EventsGetRequestBody body,
      [void Function(
              RequestConfiguration<EventsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<EventsGetResponse>(requestInfo,
        EventsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>List events, going back up to 30 days. Each event data is rendered according to Stripe API version at its creation time, specified in <a href="https://docs.stripe.com/api/events/object">event object</a> <code>api_version</code> attribute (not according to your current Stripe API version or <code>Stripe-Version</code> header).</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(EventsGetRequestBody body,
      [void Function(
              RequestConfiguration<EventsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<EventsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => EventsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
