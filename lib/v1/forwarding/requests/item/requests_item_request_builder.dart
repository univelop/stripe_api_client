// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/forwarding/request.dart';
import './requests_get_request_body.dart';
import './requests_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\forwarding\requests\{id}
class RequestsItemRequestBuilder
    extends BaseRequestBuilder<RequestsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  RequestsItemRequestBuilder clone() {
    return RequestsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RequestsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RequestsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter,
            "{+baseurl}/v1/forwarding/requests/{id}{?expand*}", pathParameters);

  /// Instantiates a new [RequestsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RequestsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/forwarding/requests/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a ForwardingRequest object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Request?> getAsync(RequestsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  RequestsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Request>(
        requestInfo, Request.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a ForwardingRequest object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(RequestsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  RequestsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<RequestsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => RequestsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
