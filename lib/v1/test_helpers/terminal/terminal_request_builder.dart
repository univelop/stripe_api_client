// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './readers/readers_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\terminal
class TerminalRequestBuilder
    extends BaseRequestBuilder<TerminalRequestBuilder> {
  ///  The readers property
  ReadersRequestBuilder get readers {
    return ReadersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TerminalRequestBuilder clone() {
    return TerminalRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TerminalRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TerminalRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/terminal",
            pathParameters);

  /// Instantiates a new [TerminalRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TerminalRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/terminal",
            {RequestInformation.rawUrlKey: rawUrl});
}
