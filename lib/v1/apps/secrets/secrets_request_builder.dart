// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/apps/secret.dart';
import '../../../models/error.dart';
import './delete/delete_request_builder.dart';
import './find/find_request_builder.dart';
import './secrets_get_request_body.dart';
import './secrets_get_response.dart';
import './secrets_post_request_body.dart';
import './secrets_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\apps\secrets
class SecretsRequestBuilder extends BaseRequestBuilder<SecretsRequestBuilder> {
  ///  The deletePath property
  DeleteRequestBuilder get deletePath {
    return DeleteRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The find property
  FindRequestBuilder get find {
    return FindRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SecretsRequestBuilder clone() {
    return SecretsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SecretsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SecretsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/apps/secrets?scope={scope}{&ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SecretsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SecretsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/apps/secrets?scope={scope}{&ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List all secrets stored on the given scope.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SecretsGetResponse?> getAsync(SecretsGetRequestBody body,
      [void Function(
              RequestConfiguration<SecretsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SecretsGetResponse>(requestInfo,
        SecretsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Create or replace a secret in the secret store.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Secret?> postAsync(SecretsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Secret>(
        requestInfo, Secret.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>List all secrets stored on the given scope.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SecretsGetRequestBody body,
      [void Function(
              RequestConfiguration<SecretsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SecretsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => SecretsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Create or replace a secret in the secret store.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SecretsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: '{+baseurl}/v1/apps/secrets',
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
