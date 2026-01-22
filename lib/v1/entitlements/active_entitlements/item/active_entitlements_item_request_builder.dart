// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/entitlements/active_entitlement.dart';
import '../../../../models/error.dart';
import './active_entitlements_get_request_body.dart';
import './active_entitlements_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\entitlements\active_entitlements\{id}
class ActiveEntitlementsItemRequestBuilder
    extends BaseRequestBuilder<ActiveEntitlementsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ActiveEntitlementsItemRequestBuilder clone() {
    return ActiveEntitlementsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ActiveEntitlementsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ActiveEntitlementsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/entitlements/active_entitlements/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [ActiveEntitlementsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ActiveEntitlementsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/entitlements/active_entitlements/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve an active entitlement</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ActiveEntitlement?> getAsync(ActiveEntitlementsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ActiveEntitlementsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ActiveEntitlement>(requestInfo,
        ActiveEntitlement.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve an active entitlement</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      ActiveEntitlementsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ActiveEntitlementsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<ActiveEntitlementsItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => ActiveEntitlementsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
