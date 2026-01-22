// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tax/calculation.dart';
import './line_items/line_items_request_builder.dart';
import './with_calculation_get_request_body.dart';
import './with_calculation_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax\calculations\{calculation}
class WithCalculationItemRequestBuilder
    extends BaseRequestBuilder<WithCalculationItemRequestBuilder> {
  ///  The line_items property
  LineItemsRequestBuilder get lineItems {
    return LineItemsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithCalculationItemRequestBuilder clone() {
    return WithCalculationItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithCalculationItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCalculationItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/tax/calculations/{calculation}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithCalculationItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCalculationItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/tax/calculations/{calculation}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a Tax <code>Calculation</code> object, if the calculation hasn’t expired.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Calculation?> getAsync(WithCalculationGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCalculationItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Calculation>(
        requestInfo, Calculation.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a Tax <code>Calculation</code> object, if the calculation hasn’t expired.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithCalculationGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCalculationItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithCalculationItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithCalculationItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
