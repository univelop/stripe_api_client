// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/dispute.dart';
import '../../../../models/error.dart';
import './close/close_request_builder.dart';
import './dispute_get_request_body.dart';
import './dispute_post_request_body.dart';
import './dispute_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\charges\{charge}\dispute
class DisputeRequestBuilder extends BaseRequestBuilder<DisputeRequestBuilder> {
  ///  The close property
  CloseRequestBuilder get close {
    return CloseRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  DisputeRequestBuilder clone() {
    return DisputeRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [DisputeRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DisputeRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter,
            "{+baseurl}/v1/charges/{charge}/dispute{?expand*}", pathParameters);

  /// Instantiates a new [DisputeRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DisputeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/charges/{charge}/dispute{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve a dispute for a specified charge.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Dispute?> getAsync(DisputeGetRequestBody body,
      [void Function(
              RequestConfiguration<DisputeRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Dispute>(
        requestInfo, Dispute.createFromDiscriminatorValue, errorMapping);
  }

  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Dispute?> postAsync(DisputePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Dispute>(
        requestInfo, Dispute.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve a dispute for a specified charge.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(DisputeGetRequestBody body,
      [void Function(
              RequestConfiguration<DisputeRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DisputeRequestBuilderGetQueryParameters>(
        requestConfiguration, () => DisputeRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(DisputePostRequestBody body,
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
