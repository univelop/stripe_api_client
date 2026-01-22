// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/file.dart';
import './files_get_request_body.dart';
import './files_get_response.dart';
import './files_request_builder_get_query_parameters.dart';
import './item/with_file_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\files
class FilesRequestBuilder extends BaseRequestBuilder<FilesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.files.item collection
  ///  [file] Unique identifier of the item
  WithFileItemRequestBuilder byFile(String file) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('file', () => file);
    return WithFileItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  FilesRequestBuilder clone() {
    return FilesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FilesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FilesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/files{?created*,ending_before*,expand*,limit*,purpose*,starting_after*}",
            pathParameters);

  /// Instantiates a new [FilesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FilesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/files{?created*,ending_before*,expand*,limit*,purpose*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FilesGetResponse?> getAsync(FilesGetRequestBody body,
      [void Function(
              RequestConfiguration<FilesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FilesGetResponse>(requestInfo,
        FilesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>To upload a file to Stripe, you need to send a request of type <code>multipart/form-data</code>. Include the file you want to upload in the request, and the parameters for creating a file.</p><p>All of Stripe’s officially supported Client libraries support sending <code>multipart/form-data</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<File?> postAsync(MultipartBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<File>(
        requestInfo, File.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of the files that your account has access to. Stripe sorts and returns the files by their creation dates, placing the most recently created files at the top.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(FilesGetRequestBody body,
      [void Function(
              RequestConfiguration<FilesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<FilesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => FilesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>To upload a file to Stripe, you need to send a request of type <code>multipart/form-data</code>. Include the file you want to upload in the request, and the parameters for creating a file.</p><p>All of Stripe’s officially supported Client libraries support sending <code>multipart/form-data</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(MultipartBody body,
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
        requestAdapter, 'multipart/form-data', body);
    return requestInfo;
  }
}
