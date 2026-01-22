// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/issuing/settlement.dart';
import './complete_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\settlements\{settlement}\complete
class CompleteRequestBuilder
    extends BaseRequestBuilder<CompleteRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  CompleteRequestBuilder clone() {
    return CompleteRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CompleteRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CompleteRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/settlements/{settlement}/complete",
            pathParameters);

  /// Instantiates a new [CompleteRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CompleteRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/settlements/{settlement}/complete",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Allows the user to mark an Issuing settlement as complete.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Settlement?> postAsync(CompletePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Settlement>(
        requestInfo, Settlement.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Allows the user to mark an Issuing settlement as complete.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CompletePostRequestBody body,
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
