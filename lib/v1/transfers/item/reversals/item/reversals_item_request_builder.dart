// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/transfer_reversal.dart';
import './reversals_get_request_body.dart';
import './reversals_item_request_builder_get_query_parameters.dart';
import './reversals_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\transfers\{-id}\reversals\{id}
class ReversalsItemRequestBuilder
    extends BaseRequestBuilder<ReversalsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ReversalsItemRequestBuilder clone() {
    return ReversalsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReversalsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReversalsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/transfers/{%2Did}/reversals/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [ReversalsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReversalsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/transfers/{%2Did}/reversals/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>By default, you can see the 10 most recent reversals stored directly on the transfer object, but you can also retrieve details about a specific reversal stored on the transfer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TransferReversal?> getAsync(ReversalsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReversalsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TransferReversal>(requestInfo,
        TransferReversal.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the specified reversal by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p><p>This request only accepts metadata and description as arguments.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TransferReversal?> postAsync(ReversalsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TransferReversal>(requestInfo,
        TransferReversal.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>By default, you can see the 10 most recent reversals stored directly on the transfer object, but you can also retrieve details about a specific reversal stored on the transfer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReversalsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReversalsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReversalsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ReversalsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the specified reversal by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p><p>This request only accepts metadata and description as arguments.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ReversalsPostRequestBody body,
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
