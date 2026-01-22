// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tax_code.dart';
import './tax_codes_get_request_body.dart';
import './tax_codes_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax_codes\{id}
class TaxCodesItemRequestBuilder
    extends BaseRequestBuilder<TaxCodesItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  TaxCodesItemRequestBuilder clone() {
    return TaxCodesItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TaxCodesItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxCodesItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax_codes/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [TaxCodesItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxCodesItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax_codes/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing tax code. Supply the unique tax code ID and Stripe will return the corresponding tax code information.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TaxCode?> getAsync(TaxCodesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  TaxCodesItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TaxCode>(
        requestInfo, TaxCode.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing tax code. Supply the unique tax code ID and Stripe will return the corresponding tax code information.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(TaxCodesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  TaxCodesItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TaxCodesItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => TaxCodesItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
