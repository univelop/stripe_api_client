// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/treasury/outbound_payment.dart';
import './fail/fail_request_builder.dart';
import './outbound_payments_post_request_body.dart';
import './post/post_request_builder.dart';
import './return_/return_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\treasury\outbound_payments\{id}
class OutboundPaymentsItemRequestBuilder
    extends BaseRequestBuilder<OutboundPaymentsItemRequestBuilder> {
  ///  The fail property
  FailRequestBuilder get fail {
    return FailRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The postPath property
  PostRequestBuilder get postPath {
    return PostRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The return property
  ReturnRequestBuilder get return_ {
    return ReturnRequestBuilder(pathParameters, requestAdapter);
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
            "{+baseurl}/v1/test_helpers/treasury/outbound_payments/{id}",
            pathParameters);

  /// Instantiates a new [OutboundPaymentsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundPaymentsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/treasury/outbound_payments/{id}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Updates a test mode created OutboundPayment with tracking details. The OutboundPayment must not be cancelable, and cannot be in the <code>canceled</code> or <code>failed</code> states.</p>
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

  /// <p>Updates a test mode created OutboundPayment with tracking details. The OutboundPayment must not be cancelable, and cannot be in the <code>canceled</code> or <code>failed</code> states.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      OutboundPaymentsPostRequestBody body,
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
