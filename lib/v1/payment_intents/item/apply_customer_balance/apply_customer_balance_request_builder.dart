// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/payment_intent.dart';
import './apply_customer_balance_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_intents\{intent}\apply_customer_balance
class ApplyCustomerBalanceRequestBuilder
    extends BaseRequestBuilder<ApplyCustomerBalanceRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ApplyCustomerBalanceRequestBuilder clone() {
    return ApplyCustomerBalanceRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ApplyCustomerBalanceRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ApplyCustomerBalanceRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents/{intent}/apply_customer_balance",
            pathParameters);

  /// Instantiates a new [ApplyCustomerBalanceRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ApplyCustomerBalanceRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents/{intent}/apply_customer_balance",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Manually reconcile the remaining amount for a <code>customer_balance</code> PaymentIntent.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentIntent?> postAsync(ApplyCustomerBalancePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentIntent>(
        requestInfo, PaymentIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Manually reconcile the remaining amount for a <code>customer_balance</code> PaymentIntent.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      ApplyCustomerBalancePostRequestBody body,
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
