// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/apps/secret.dart';
import '../../../../models/error.dart';
import './delete_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\apps\secrets\delete
class DeleteRequestBuilder extends BaseRequestBuilder<DeleteRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  DeleteRequestBuilder clone() {
    return DeleteRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [DeleteRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DeleteRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/apps/secrets/delete",
            pathParameters);

  /// Instantiates a new [DeleteRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DeleteRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/apps/secrets/delete",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Deletes a secret from the secret store by name and scope.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Secret?> postAsync(DeletePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Secret>(
        requestInfo, Secret.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Deletes a secret from the secret store by name and scope.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(DeletePostRequestBody body,
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
