// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/payment_attempt_record.dart';
import './payment_attempt_records_get_request_body.dart';
import './payment_attempt_records_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_attempt_records\{id}
class PaymentAttemptRecordsItemRequestBuilder
    extends BaseRequestBuilder<PaymentAttemptRecordsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  PaymentAttemptRecordsItemRequestBuilder clone() {
    return PaymentAttemptRecordsItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentAttemptRecordsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentAttemptRecordsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_attempt_records/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [PaymentAttemptRecordsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentAttemptRecordsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_attempt_records/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a Payment Attempt Record with the given ID</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentAttemptRecord?> getAsync(
      PaymentAttemptRecordsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentAttemptRecordsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentAttemptRecord>(requestInfo,
        PaymentAttemptRecord.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a Payment Attempt Record with the given ID</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      PaymentAttemptRecordsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentAttemptRecordsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<PaymentAttemptRecordsItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => PaymentAttemptRecordsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
