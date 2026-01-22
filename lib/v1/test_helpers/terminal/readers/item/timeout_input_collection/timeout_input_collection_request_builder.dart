// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/terminal/reader.dart';
import './timeout_input_collection_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\terminal\readers\{reader}\timeout_input_collection
class TimeoutInputCollectionRequestBuilder
    extends BaseRequestBuilder<TimeoutInputCollectionRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  TimeoutInputCollectionRequestBuilder clone() {
    return TimeoutInputCollectionRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TimeoutInputCollectionRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TimeoutInputCollectionRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/terminal/readers/{reader}/timeout_input_collection",
            pathParameters);

  /// Instantiates a new [TimeoutInputCollectionRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TimeoutInputCollectionRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/terminal/readers/{reader}/timeout_input_collection",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Use this endpoint to complete an input collection with a timeout error on a simulated reader.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Reader?> postAsync(TimeoutInputCollectionPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Reader>(
        requestInfo, Reader.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Use this endpoint to complete an input collection with a timeout error on a simulated reader.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      TimeoutInputCollectionPostRequestBody body,
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
