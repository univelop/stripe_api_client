// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/refund.dart';
import './with_refund_get_request_body.dart';
import './with_refund_item_request_builder_get_query_parameters.dart';
import './with_refund_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\charges\{charge}\refunds\{refund}
class WithRefundItemRequestBuilder
    extends BaseRequestBuilder<WithRefundItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithRefundItemRequestBuilder clone() {
    return WithRefundItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithRefundItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithRefundItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/charges/{charge}/refunds/{refund}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithRefundItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithRefundItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/charges/{charge}/refunds/{refund}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing refund.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Refund?> getAsync(WithRefundGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithRefundItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Refund>(
        requestInfo, Refund.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Update a specified refund.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Refund?> postAsync(WithRefundPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Refund>(
        requestInfo, Refund.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing refund.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithRefundGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithRefundItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithRefundItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithRefundItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Update a specified refund.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithRefundPostRequestBody body,
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
