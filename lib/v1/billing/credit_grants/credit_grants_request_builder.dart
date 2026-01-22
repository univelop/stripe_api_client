// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/billing/credit_grant.dart';
import '../../../models/error.dart';
import './credit_grants_get_request_body.dart';
import './credit_grants_get_response.dart';
import './credit_grants_post_request_body.dart';
import './credit_grants_request_builder_get_query_parameters.dart';
import './item/credit_grants_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\credit_grants
class CreditGrantsRequestBuilder
    extends BaseRequestBuilder<CreditGrantsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.billing.credit_grants.item collection
  ///  [id] Unique identifier for the object.
  CreditGrantsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return CreditGrantsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CreditGrantsRequestBuilder clone() {
    return CreditGrantsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreditGrantsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditGrantsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_grants{?customer*,customer_account*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [CreditGrantsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditGrantsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_grants{?customer*,customer_account*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve a list of credit grants.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditGrantsGetResponse?> getAsync(Credit_grantsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditGrantsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditGrantsGetResponse>(requestInfo,
        CreditGrantsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a credit grant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditGrant?> postAsync(Credit_grantsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditGrant>(
        requestInfo, CreditGrant.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve a list of credit grants.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(Credit_grantsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditGrantsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CreditGrantsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CreditGrantsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a credit grant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(Credit_grantsPostRequestBody body,
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
