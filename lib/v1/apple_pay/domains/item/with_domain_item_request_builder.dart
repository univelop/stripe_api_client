// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/apple_pay_domain.dart';
import '../../../../models/deleted_apple_pay_domain.dart';
import '../../../../models/error.dart';
import './with_domain_delete_request_body.dart';
import './with_domain_get_request_body.dart';
import './with_domain_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\apple_pay\domains\{domain}
class WithDomainItemRequestBuilder
    extends BaseRequestBuilder<WithDomainItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithDomainItemRequestBuilder clone() {
    return WithDomainItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithDomainItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithDomainItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/apple_pay/domains/{domain}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithDomainItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithDomainItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/apple_pay/domains/{domain}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Delete an apple pay domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedApplePayDomain?> deleteAsync(WithDomainDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedApplePayDomain>(requestInfo,
        DeletedApplePayDomain.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve an apple pay domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ApplePayDomain?> getAsync(WithDomainGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithDomainItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ApplePayDomain>(
        requestInfo, ApplePayDomain.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Delete an apple pay domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      WithDomainDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieve an apple pay domain.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithDomainGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithDomainItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithDomainItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithDomainItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
