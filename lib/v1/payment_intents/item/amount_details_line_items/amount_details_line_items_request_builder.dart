// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './amount_details_line_items_get_request_body.dart';
import './amount_details_line_items_get_response.dart';
import './amount_details_line_items_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_intents\{intent}\amount_details_line_items
class AmountDetailsLineItemsRequestBuilder
    extends BaseRequestBuilder<AmountDetailsLineItemsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  AmountDetailsLineItemsRequestBuilder clone() {
    return AmountDetailsLineItemsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AmountDetailsLineItemsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AmountDetailsLineItemsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents/{intent}/amount_details_line_items{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [AmountDetailsLineItemsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AmountDetailsLineItemsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents/{intent}/amount_details_line_items{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists all LineItems of a given PaymentIntent.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<AmountDetailsLineItemsGetResponse?> getAsync(
      AmountDetailsLineItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  AmountDetailsLineItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<AmountDetailsLineItemsGetResponse>(
        requestInfo,
        AmountDetailsLineItemsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Lists all LineItems of a given PaymentIntent.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      AmountDetailsLineItemsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  AmountDetailsLineItemsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<AmountDetailsLineItemsRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => AmountDetailsLineItemsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
