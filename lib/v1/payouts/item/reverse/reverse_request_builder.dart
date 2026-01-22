// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/payout.dart';
import './reverse_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payouts\{payout}\reverse
class ReverseRequestBuilder extends BaseRequestBuilder<ReverseRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ReverseRequestBuilder clone() {
    return ReverseRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReverseRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReverseRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payouts/{payout}/reverse",
            pathParameters);

  /// Instantiates a new [ReverseRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReverseRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/payouts/{payout}/reverse",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US and Canadian bank accounts. If the payout is manual and in the <code>pending</code> status, use <code>/v1/payouts/:id/cancel</code> instead.</p><p>By requesting a reversal through <code>/v1/payouts/:id/reverse</code>, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Payout?> postAsync(ReversePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Payout>(
        requestInfo, Payout.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US and Canadian bank accounts. If the payout is manual and in the <code>pending</code> status, use <code>/v1/payouts/:id/cancel</code> instead.</p><p>By requesting a reversal through <code>/v1/payouts/:id/reverse</code>, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ReversePostRequestBody body,
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
