// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/billing/alert.dart';
import '../../../../models/error.dart';
import './activate/activate_request_builder.dart';
import './alerts_get_request_body.dart';
import './alerts_item_request_builder_get_query_parameters.dart';
import './archive/archive_request_builder.dart';
import './deactivate/deactivate_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\alerts\{id}
class AlertsItemRequestBuilder
    extends BaseRequestBuilder<AlertsItemRequestBuilder> {
  ///  The activate property
  ActivateRequestBuilder get activate {
    return ActivateRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The archive property
  ArchiveRequestBuilder get archive {
    return ArchiveRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The deactivate property
  DeactivateRequestBuilder get deactivate {
    return DeactivateRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  AlertsItemRequestBuilder clone() {
    return AlertsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AlertsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AlertsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/alerts/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [AlertsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AlertsItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/alerts/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a billing alert given an ID</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Alert?> getAsync(AlertsGetRequestBody body,
      [void Function(
              RequestConfiguration<AlertsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Alert>(
        requestInfo, Alert.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a billing alert given an ID</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(AlertsGetRequestBody body,
      [void Function(
              RequestConfiguration<AlertsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<AlertsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => AlertsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
