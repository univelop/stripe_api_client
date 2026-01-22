// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/file_link.dart';
import './file_links_get_request_body.dart';
import './file_links_get_response.dart';
import './file_links_post_request_body.dart';
import './file_links_request_builder_get_query_parameters.dart';
import './item/with_link_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\file_links
class FileLinksRequestBuilder
    extends BaseRequestBuilder<FileLinksRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.file_links.item collection
  ///  [link] Unique identifier of the item
  WithLinkItemRequestBuilder byLink(String link) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('link', () => link);
    return WithLinkItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  FileLinksRequestBuilder clone() {
    return FileLinksRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FileLinksRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FileLinksRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/file_links{?created*,ending_before*,expand*,expired*,file*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [FileLinksRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FileLinksRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/file_links{?created*,ending_before*,expand*,expired*,file*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of file links.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FileLinksGetResponse?> getAsync(FileLinksGetRequestBody body,
      [void Function(
              RequestConfiguration<FileLinksRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FileLinksGetResponse>(requestInfo,
        FileLinksGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new file link object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FileLink?> postAsync(FileLinksPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FileLink>(
        requestInfo, FileLink.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of file links.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(FileLinksGetRequestBody body,
      [void Function(
              RequestConfiguration<FileLinksRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<FileLinksRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => FileLinksRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new file link object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(FileLinksPostRequestBody body,
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
