// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/issuing/dispute.dart';
import './submit_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\disputes\{dispute}\submit
class SubmitRequestBuilder extends BaseRequestBuilder<SubmitRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  SubmitRequestBuilder clone() {
    return SubmitRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SubmitRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubmitRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/issuing/disputes/{dispute}/submit",
            pathParameters);

  /// Instantiates a new [SubmitRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubmitRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/issuing/disputes/{dispute}/submit",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Submits an Issuing <code>Dispute</code> to the card network. Stripe validates that all evidence fields required for the dispute’s reason are present. For more details, see <a href="/docs/issuing/purchases/disputes#dispute-reasons-and-evidence">Dispute reasons and evidence</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Dispute?> postAsync(SubmitPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Dispute>(
        requestInfo, Dispute.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Submits an Issuing <code>Dispute</code> to the card network. Stripe validates that all evidence fields required for the dispute’s reason are present. For more details, see <a href="/docs/issuing/purchases/disputes#dispute-reasons-and-evidence">Dispute reasons and evidence</a>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SubmitPostRequestBody body,
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
