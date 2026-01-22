// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tax_rate.dart';
import './with_tax_rate_get_request_body.dart';
import './with_tax_rate_item_request_builder_get_query_parameters.dart';
import './with_tax_rate_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax_rates\{tax_rate}
class WithTaxRateItemRequestBuilder
    extends BaseRequestBuilder<WithTaxRateItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithTaxRateItemRequestBuilder clone() {
    return WithTaxRateItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithTaxRateItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTaxRateItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax_rates/{tax_rate}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithTaxRateItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTaxRateItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax_rates/{tax_rate}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a tax rate with the given ID</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TaxRate?> getAsync(WithTaxRateGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTaxRateItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TaxRate>(
        requestInfo, TaxRate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates an existing tax rate.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TaxRate?> postAsync(WithTaxRatePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TaxRate>(
        requestInfo, TaxRate.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a tax rate with the given ID</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithTaxRateGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTaxRateItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithTaxRateItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithTaxRateItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates an existing tax rate.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithTaxRatePostRequestBody body,
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
