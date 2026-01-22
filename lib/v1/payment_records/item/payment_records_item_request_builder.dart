// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/payment_record.dart';
import './payment_records_get_request_body.dart';
import './payment_records_item_request_builder_get_query_parameters.dart';
import './report_payment_attempt/report_payment_attempt_request_builder.dart';
import './report_payment_attempt_canceled/report_payment_attempt_canceled_request_builder.dart';
import './report_payment_attempt_failed/report_payment_attempt_failed_request_builder.dart';
import './report_payment_attempt_guaranteed/report_payment_attempt_guaranteed_request_builder.dart';
import './report_payment_attempt_informational/report_payment_attempt_informational_request_builder.dart';
import './report_refund/report_refund_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_records\{id}
class PaymentRecordsItemRequestBuilder
    extends BaseRequestBuilder<PaymentRecordsItemRequestBuilder> {
  ///  The report_payment_attempt property
  ReportPaymentAttemptRequestBuilder get reportPaymentAttempt {
    return ReportPaymentAttemptRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The report_payment_attempt_canceled property
  ReportPaymentAttemptCanceledRequestBuilder get reportPaymentAttemptCanceled {
    return ReportPaymentAttemptCanceledRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The report_payment_attempt_failed property
  ReportPaymentAttemptFailedRequestBuilder get reportPaymentAttemptFailed {
    return ReportPaymentAttemptFailedRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The report_payment_attempt_guaranteed property
  ReportPaymentAttemptGuaranteedRequestBuilder
      get reportPaymentAttemptGuaranteed {
    return ReportPaymentAttemptGuaranteedRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The report_payment_attempt_informational property
  ReportPaymentAttemptInformationalRequestBuilder
      get reportPaymentAttemptInformational {
    return ReportPaymentAttemptInformationalRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The report_refund property
  ReportRefundRequestBuilder get reportRefund {
    return ReportRefundRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PaymentRecordsItemRequestBuilder clone() {
    return PaymentRecordsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentRecordsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentRecordsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_records/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [PaymentRecordsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentRecordsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_records/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a Payment Record with the given ID</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentRecord?> getAsync(PaymentRecordsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentRecordsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentRecord>(
        requestInfo, PaymentRecord.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a Payment Record with the given ID</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PaymentRecordsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentRecordsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PaymentRecordsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => PaymentRecordsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
