// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './find/find_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax\associations
class AssociationsRequestBuilder
    extends BaseRequestBuilder<AssociationsRequestBuilder> {
  ///  The find property
  FindRequestBuilder get find {
    return FindRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  AssociationsRequestBuilder clone() {
    return AssociationsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AssociationsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AssociationsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/associations", pathParameters);

  /// Instantiates a new [AssociationsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AssociationsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/associations",
            {RequestInformation.rawUrlKey: rawUrl});
}
