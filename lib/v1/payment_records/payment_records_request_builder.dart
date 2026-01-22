// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/payment_records_item_request_builder.dart';
import './report_payment/report_payment_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_records
class PaymentRecordsRequestBuilder
    extends BaseRequestBuilder<PaymentRecordsRequestBuilder> {
  ///  The report_payment property
  ReportPaymentRequestBuilder get reportPayment {
    return ReportPaymentRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.payment_records.item collection
  ///  [id] The ID of the Payment Record.
  PaymentRecordsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return PaymentRecordsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PaymentRecordsRequestBuilder clone() {
    return PaymentRecordsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentRecordsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentRecordsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_records", pathParameters);

  /// Instantiates a new [PaymentRecordsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentRecordsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payment_records",
            {RequestInformation.rawUrlKey: rawUrl});
}
