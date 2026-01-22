// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/terminal/reader.dart';
import './item/with_reader_item_request_builder.dart';
import './readers_get_request_body.dart';
import './readers_get_response.dart';
import './readers_post_request_body.dart';
import './readers_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\terminal\readers
class ReadersRequestBuilder extends BaseRequestBuilder<ReadersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.terminal.readers.item collection
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
      : super(
            requestAdapter,
            "{+baseurl}/v1/terminal/readers{?device_type*,ending_before*,expand*,limit*,location*,serial_number*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [ReadersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReadersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/terminal/readers{?device_type*,ending_before*,expand*,limit*,location*,serial_number*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of <code>Reader</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReadersGetResponse?> getAsync(ReadersGetRequestBody body,
      [void Function(
              RequestConfiguration<ReadersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReadersGetResponse>(requestInfo,
        ReadersGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new <code>Reader</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Reader?> postAsync(ReadersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Reader>(
        requestInfo, Reader.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of <code>Reader</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReadersGetRequestBody body,
      [void Function(
              RequestConfiguration<ReadersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReadersRequestBuilderGetQueryParameters>(
        requestConfiguration, () => ReadersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new <code>Reader</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ReadersPostRequestBody body,
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
