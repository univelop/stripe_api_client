// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_mandate_notification_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sources\{source}\mandate_notifications
class MandateNotificationsRequestBuilder
    extends BaseRequestBuilder<MandateNotificationsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.sources.item.mandate_notifications.item collection
  ///  [mandateNotification] Unique identifier of the item
  WithMandateNotificationItemRequestBuilder byMandateNotification(
      String mandateNotification) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('mandate_notification', () => mandateNotification);
    return WithMandateNotificationItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  MandateNotificationsRequestBuilder clone() {
    return MandateNotificationsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [MandateNotificationsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MandateNotificationsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}/mandate_notifications",
            pathParameters);

  /// Instantiates a new [MandateNotificationsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MandateNotificationsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}/mandate_notifications",
            {RequestInformation.rawUrlKey: rawUrl});
}
