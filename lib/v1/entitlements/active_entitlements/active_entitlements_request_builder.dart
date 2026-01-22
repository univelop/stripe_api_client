// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './active_entitlements_get_request_body.dart';
import './active_entitlements_get_response.dart';
import './active_entitlements_request_builder_get_query_parameters.dart';
import './item/active_entitlements_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\entitlements\active_entitlements
class ActiveEntitlementsRequestBuilder
    extends BaseRequestBuilder<ActiveEntitlementsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.entitlements.active_entitlements.item collection
  ///  [id] The ID of the entitlement.
  ActiveEntitlementsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return ActiveEntitlementsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ActiveEntitlementsRequestBuilder clone() {
    return ActiveEntitlementsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ActiveEntitlementsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ActiveEntitlementsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/entitlements/active_entitlements?customer={customer}{&ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ActiveEntitlementsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ActiveEntitlementsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/entitlements/active_entitlements?customer={customer}{&ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve a list of active entitlements for a customer</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ActiveEntitlementsGetResponse?> getAsync(
      Active_entitlementsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ActiveEntitlementsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ActiveEntitlementsGetResponse>(
        requestInfo,
        ActiveEntitlementsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Retrieve a list of active entitlements for a customer</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      Active_entitlementsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ActiveEntitlementsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ActiveEntitlementsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ActiveEntitlementsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
