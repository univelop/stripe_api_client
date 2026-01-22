// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/billing/meter_event.dart';
import '../../../models/error.dart';
import './meter_events_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\meter_events
class MeterEventsRequestBuilder
    extends BaseRequestBuilder<MeterEventsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  MeterEventsRequestBuilder clone() {
    return MeterEventsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [MeterEventsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MeterEventsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/meter_events",
            pathParameters);

  /// Instantiates a new [MeterEventsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MeterEventsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/meter_events",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Creates a billing meter event.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<MeterEvent?> postAsync(MeterEventsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<MeterEvent>(
        requestInfo, MeterEvent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a billing meter event.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(MeterEventsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
