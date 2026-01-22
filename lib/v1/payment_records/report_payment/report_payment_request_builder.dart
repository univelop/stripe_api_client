// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/payment_record.dart';
import './report_payment_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_records\report_payment
class ReportPaymentRequestBuilder
    extends BaseRequestBuilder<ReportPaymentRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ReportPaymentRequestBuilder clone() {
    return ReportPaymentRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReportPaymentRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportPaymentRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_records/report_payment",
            pathParameters);

  /// Instantiates a new [ReportPaymentRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReportPaymentRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_records/report_payment",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Report a new Payment Record. You may report a Payment Record as it is initialized and later report updates through the other report_* methods, or report Payment Records in a terminal state directly, through this method.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentRecord?> postAsync(ReportPaymentPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentRecord>(
        requestInfo, PaymentRecord.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Report a new Payment Record. You may report a Payment Record as it is initialized and later report updates through the other report_* methods, or report Payment Records in a terminal state directly, through this method.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ReportPaymentPostRequestBody body,
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
