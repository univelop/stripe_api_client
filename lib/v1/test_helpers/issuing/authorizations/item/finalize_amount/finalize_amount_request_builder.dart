// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/issuing/authorization.dart';
import './finalize_amount_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\authorizations\{authorization}\finalize_amount
class FinalizeAmountRequestBuilder
    extends BaseRequestBuilder<FinalizeAmountRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  FinalizeAmountRequestBuilder clone() {
    return FinalizeAmountRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FinalizeAmountRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FinalizeAmountRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/authorizations/{authorization}/finalize_amount",
            pathParameters);

  /// Instantiates a new [FinalizeAmountRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FinalizeAmountRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/authorizations/{authorization}/finalize_amount",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Finalize the amount on an Authorization prior to capture, when the initial authorization was for an estimated amount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Authorization?> postAsync(FinalizeAmountPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Authorization>(
        requestInfo, Authorization.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Finalize the amount on an Authorization prior to capture, when the initial authorization was for an estimated amount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      FinalizeAmountPostRequestBody body,
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
