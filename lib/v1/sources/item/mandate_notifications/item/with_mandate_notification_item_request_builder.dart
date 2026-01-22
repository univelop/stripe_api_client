// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/source_mandate_notification.dart';
import './with_mandate_notification_get_request_body.dart';
import './with_mandate_notification_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sources\{source}\mandate_notifications\{mandate_notification}
class WithMandateNotificationItemRequestBuilder
    extends BaseRequestBuilder<WithMandateNotificationItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithMandateNotificationItemRequestBuilder clone() {
    return WithMandateNotificationItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithMandateNotificationItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithMandateNotificationItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}/mandate_notifications/{mandate_notification}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithMandateNotificationItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithMandateNotificationItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}/mandate_notifications/{mandate_notification}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a new Source MandateNotification.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SourceMandateNotification?> getAsync(
      WithMandateNotificationGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithMandateNotificationItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SourceMandateNotification>(requestInfo,
        SourceMandateNotification.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a new Source MandateNotification.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithMandateNotificationGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithMandateNotificationItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithMandateNotificationItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () =>
                WithMandateNotificationItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
