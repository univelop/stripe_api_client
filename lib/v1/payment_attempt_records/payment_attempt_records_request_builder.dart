// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './item/payment_attempt_records_item_request_builder.dart';
import './payment_attempt_records_get_request_body.dart';
import './payment_attempt_records_get_response.dart';
import './payment_attempt_records_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_attempt_records
class PaymentAttemptRecordsRequestBuilder
    extends BaseRequestBuilder<PaymentAttemptRecordsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.payment_attempt_records.item collection
  ///  [id] The ID of the Payment Attempt Record.
  PaymentAttemptRecordsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return PaymentAttemptRecordsItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PaymentAttemptRecordsRequestBuilder clone() {
    return PaymentAttemptRecordsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentAttemptRecordsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentAttemptRecordsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_attempt_records?payment_record={payment_record}{&expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PaymentAttemptRecordsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentAttemptRecordsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_attempt_records?payment_record={payment_record}{&expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List all the Payment Attempt Records attached to the specified Payment Record.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentAttemptRecordsGetResponse?> getAsync(
      Payment_attempt_recordsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentAttemptRecordsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentAttemptRecordsGetResponse>(
        requestInfo,
        PaymentAttemptRecordsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>List all the Payment Attempt Records attached to the specified Payment Record.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      Payment_attempt_recordsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentAttemptRecordsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<PaymentAttemptRecordsRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => PaymentAttemptRecordsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
