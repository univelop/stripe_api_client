// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/treasury/outbound_payment.dart';
import './cancel/cancel_request_builder.dart';
import './outbound_payments_get_request_body.dart';
import './outbound_payments_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\outbound_payments\{id}
class OutboundPaymentsItemRequestBuilder
    extends BaseRequestBuilder<OutboundPaymentsItemRequestBuilder> {
  ///  The cancel property
  CancelRequestBuilder get cancel {
    return CancelRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  OutboundPaymentsItemRequestBuilder clone() {
    return OutboundPaymentsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [OutboundPaymentsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundPaymentsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/outbound_payments/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [OutboundPaymentsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundPaymentsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/outbound_payments/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment creation request or OutboundPayment list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<OutboundPayment?> getAsync(OutboundPaymentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  OutboundPaymentsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<OutboundPayment>(requestInfo,
        OutboundPayment.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment creation request or OutboundPayment list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      OutboundPaymentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  OutboundPaymentsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<OutboundPaymentsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => OutboundPaymentsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
