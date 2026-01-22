// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/terminal/reader.dart';
import './succeed_input_collection_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\terminal\readers\{reader}\succeed_input_collection
class SucceedInputCollectionRequestBuilder
    extends BaseRequestBuilder<SucceedInputCollectionRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  SucceedInputCollectionRequestBuilder clone() {
    return SucceedInputCollectionRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SucceedInputCollectionRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SucceedInputCollectionRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/terminal/readers/{reader}/succeed_input_collection",
            pathParameters);

  /// Instantiates a new [SucceedInputCollectionRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SucceedInputCollectionRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/terminal/readers/{reader}/succeed_input_collection",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Use this endpoint to trigger a successful input collection on a simulated reader.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Reader?> postAsync(SucceedInputCollectionPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Reader>(
        requestInfo, Reader.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Use this endpoint to trigger a successful input collection on a simulated reader.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      SucceedInputCollectionPostRequestBody body,
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
