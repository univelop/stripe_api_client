// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_reader_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\terminal\readers
class ReadersRequestBuilder extends BaseRequestBuilder<ReadersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.terminal.readers.item collection
  ///  [reader] Unique identifier of the item
  WithReaderItemRequestBuilder byReader(String reader) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('reader', () => reader);
    return WithReaderItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ReadersRequestBuilder clone() {
    return ReadersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReadersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReadersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/terminal/readers",
            pathParameters);

  /// Instantiates a new [ReadersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReadersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/terminal/readers",
            {RequestInformation.rawUrlKey: rawUrl});
}
