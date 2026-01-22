// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/payment_record.dart';
import './report_payment_attempt_canceled_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_records\{id}\report_payment_attempt_canceled
class ReportPaymentAttemptCanceledRequestBuilder
    extends BaseRequestBuilder<ReportPaymentAttemptCanceledRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ReportPaymentAttemptCanceledRequestBuilder clone() {
    return ReportPaymentAttemptCanceledRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReportPaymentAttemptCanceledRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportPaymentAttemptCanceledRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_records/{id}/report_payment_attempt_canceled",
            pathParameters);

  /// Instantiates a new [ReportPaymentAttemptCanceledRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportPaymentAttemptCanceledRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_records/{id}/report_payment_attempt_canceled",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Report that the most recent payment attempt on the specified Payment Record was canceled.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentRecord?> postAsync(
      ReportPaymentAttemptCanceledPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentRecord>(
        requestInfo, PaymentRecord.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Report that the most recent payment attempt on the specified Payment Record was canceled.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      ReportPaymentAttemptCanceledPostRequestBody body,
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
