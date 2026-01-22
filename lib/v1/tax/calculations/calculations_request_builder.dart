// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tax/calculation.dart';
import './calculations_post_request_body.dart';
import './item/with_calculation_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax\calculations
class CalculationsRequestBuilder
    extends BaseRequestBuilder<CalculationsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.tax.calculations.item collection
  ///  [calculation] Unique identifier of the item
  WithCalculationItemRequestBuilder byCalculation(String calculation) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('calculation', () => calculation);
    return WithCalculationItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CalculationsRequestBuilder clone() {
    return CalculationsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CalculationsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CalculationsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/calculations", pathParameters);

  /// Instantiates a new [CalculationsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CalculationsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/calculations",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Calculates tax based on the input and returns a Tax <code>Calculation</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Calculation?> postAsync(CalculationsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Calculation>(
        requestInfo, Calculation.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Calculates tax based on the input and returns a Tax <code>Calculation</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CalculationsPostRequestBody body,
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
