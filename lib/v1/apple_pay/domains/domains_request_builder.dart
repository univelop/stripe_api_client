// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/apple_pay_domain.dart';
import '../../../models/error.dart';
import './domains_get_request_body.dart';
import './domains_get_response.dart';
import './domains_post_request_body.dart';
import './domains_request_builder_get_query_parameters.dart';
import './item/with_domain_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\apple_pay\domains
class DomainsRequestBuilder extends BaseRequestBuilder<DomainsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.apple_pay.domains.item collection
  ///  [domain] Unique identifier of the item
  WithDomainItemRequestBuilder byDomain(String domain) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('domain', () => domain);
    return WithDomainItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  DomainsRequestBuilder clone() {
    return DomainsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [DomainsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DomainsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/apple_pay/domains{?domain_name*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [DomainsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DomainsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/apple_pay/domains{?domain_name*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List apple pay domains.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DomainsGetResponse?> getAsync(DomainsGetRequestBody body,
      [void Function(
              RequestConfiguration<DomainsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DomainsGetResponse>(requestInfo,
        DomainsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Create an apple pay domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ApplePayDomain?> postAsync(DomainsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ApplePayDomain>(
        requestInfo, ApplePayDomain.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>List apple pay domains.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(DomainsGetRequestBody body,
      [void Function(
              RequestConfiguration<DomainsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DomainsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => DomainsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Create an apple pay domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(DomainsPostRequestBody body,
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
