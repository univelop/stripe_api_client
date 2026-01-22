// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/treasury/outbound_payment.dart';
import './item/outbound_payments_item_request_builder.dart';
import './outbound_payments_get_request_body.dart';
import './outbound_payments_get_response.dart';
import './outbound_payments_post_request_body.dart';
import './outbound_payments_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\outbound_payments
class OutboundPaymentsRequestBuilder
    extends BaseRequestBuilder<OutboundPaymentsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.outbound_payments.item collection
  ///  [id] Unique identifier of the item
  OutboundPaymentsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return OutboundPaymentsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  OutboundPaymentsRequestBuilder clone() {
    return OutboundPaymentsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [OutboundPaymentsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundPaymentsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/outbound_payments?financial_account={financial_account}{&created*,customer*,ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [OutboundPaymentsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundPaymentsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/outbound_payments?financial_account={financial_account}{&created*,customer*,ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of OutboundPayments sent from the specified FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<OutboundPaymentsGetResponse?> getAsync(
      OutboundPaymentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  OutboundPaymentsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<OutboundPaymentsGetResponse>(requestInfo,
        OutboundPaymentsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates an OutboundPayment.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<OutboundPayment?> postAsync(OutboundPaymentsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<OutboundPayment>(requestInfo,
        OutboundPayment.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of OutboundPayments sent from the specified FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      OutboundPaymentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  OutboundPaymentsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<OutboundPaymentsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => OutboundPaymentsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates an OutboundPayment.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      OutboundPaymentsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: '{+baseurl}/v1/treasury/outbound_payments',
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
