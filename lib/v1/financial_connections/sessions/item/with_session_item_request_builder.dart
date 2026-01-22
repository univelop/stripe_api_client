// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/financial_connections/session.dart';
import './with_session_get_request_body.dart';
import './with_session_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\financial_connections\sessions\{session}
class WithSessionItemRequestBuilder
    extends BaseRequestBuilder<WithSessionItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithSessionItemRequestBuilder clone() {
    return WithSessionItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithSessionItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSessionItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/sessions/{session}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithSessionItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSessionItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/sessions/{session}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a Financial Connections <code>Session</code></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Session?> getAsync(WithSessionGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSessionItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Session>(
        requestInfo, Session.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a Financial Connections <code>Session</code></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithSessionGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSessionItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithSessionItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithSessionItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
