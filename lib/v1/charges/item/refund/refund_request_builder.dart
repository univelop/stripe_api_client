// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/charge.dart';
import '../../../../models/error.dart';
import './refund_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\charges\{charge}\refund
class RefundRequestBuilder extends BaseRequestBuilder<RefundRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  RefundRequestBuilder clone() {
    return RefundRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RefundRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/charges/{charge}/refund",
            pathParameters);

  /// Instantiates a new [RefundRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/charges/{charge}/refund",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>When you create a new refund, you must specify either a Charge or a PaymentIntent object.</p><p>This action refunds a previously created charge that’s not refunded yet.Funds are refunded to the credit or debit card that’s originally charged.</p><p>You can optionally refund only part of a charge.You can repeat this until the entire charge is refunded.</p><p>After you entirely refund a charge, you can’t refund it again.This method raises an error when it’s called on an already-refunded charge,or when you attempt to refund more money than is left on a charge.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Charge?> postAsync(RefundPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Charge>(
        requestInfo, Charge.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>When you create a new refund, you must specify either a Charge or a PaymentIntent object.</p><p>This action refunds a previously created charge that’s not refunded yet.Funds are refunded to the credit or debit card that’s originally charged.</p><p>You can optionally refund only part of a charge.You can repeat this until the entire charge is refunded.</p><p>After you entirely refund a charge, you can’t refund it again.This method raises an error when it’s called on an already-refunded charge,or when you attempt to refund more money than is left on a charge.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(RefundPostRequestBody body,
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
