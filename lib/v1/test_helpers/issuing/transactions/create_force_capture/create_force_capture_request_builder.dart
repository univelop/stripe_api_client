// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/issuing/transaction.dart';
import './create_force_capture_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\transactions\create_force_capture
class CreateForceCaptureRequestBuilder
    extends BaseRequestBuilder<CreateForceCaptureRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  CreateForceCaptureRequestBuilder clone() {
    return CreateForceCaptureRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreateForceCaptureRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreateForceCaptureRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/transactions/create_force_capture",
            pathParameters);

  /// Instantiates a new [CreateForceCaptureRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreateForceCaptureRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/issuing/transactions/create_force_capture",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Allows the user to capture an arbitrary amount, also known as a forced capture.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Transaction?> postAsync(CreateForceCapturePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Transaction>(
        requestInfo, Transaction.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Allows the user to capture an arbitrary amount, also known as a forced capture.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      CreateForceCapturePostRequestBody body,
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
