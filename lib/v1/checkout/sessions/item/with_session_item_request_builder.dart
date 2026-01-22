// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/checkout/session.dart';
import '../../../../models/error.dart';
import './expire/expire_request_builder.dart';
import './line_items/line_items_request_builder.dart';
import './with_session_get_request_body.dart';
import './with_session_item_request_builder_get_query_parameters.dart';
import './with_session_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\checkout\sessions\{session}
class WithSessionItemRequestBuilder
    extends BaseRequestBuilder<WithSessionItemRequestBuilder> {
  ///  The expire property
  ExpireRequestBuilder get expire {
    return ExpireRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The line_items property
  LineItemsRequestBuilder get lineItems {
    return LineItemsRequestBuilder(pathParameters, requestAdapter);
  }

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
            "{+baseurl}/v1/checkout/sessions/{session}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithSessionItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSessionItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/checkout/sessions/{session}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a Checkout Session object.</p>
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

  /// <p>Updates a Checkout Session object.</p><p>Related guide: <a href="/payments/checkout/dynamic-updates">Dynamically update Checkout</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Session?> postAsync(WithSessionPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Session>(
        requestInfo, Session.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a Checkout Session object.</p>
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

  /// <p>Updates a Checkout Session object.</p><p>Related guide: <a href="/payments/checkout/dynamic-updates">Dynamically update Checkout</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithSessionPostRequestBody body,
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
