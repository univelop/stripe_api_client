// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/source.dart';
import './mandate_notifications/mandate_notifications_request_builder.dart';
import './source_transactions/source_transactions_request_builder.dart';
import './verify/verify_request_builder.dart';
import './with_source_get_request_body.dart';
import './with_source_item_request_builder_get_query_parameters.dart';
import './with_source_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sources\{source}
class WithSourceItemRequestBuilder
    extends BaseRequestBuilder<WithSourceItemRequestBuilder> {
  ///  The mandate_notifications property
  MandateNotificationsRequestBuilder get mandateNotifications {
    return MandateNotificationsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The source_transactions property
  SourceTransactionsRequestBuilder get sourceTransactions {
    return SourceTransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The verify property
  VerifyRequestBuilder get verify {
    return VerifyRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithSourceItemRequestBuilder clone() {
    return WithSourceItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithSourceItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSourceItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}{?client_secret*,expand*}",
            pathParameters);

  /// Instantiates a new [WithSourceItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSourceItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}{?client_secret*,expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves an existing source object. Supply the unique source ID from a source creation request and Stripe will return the corresponding up-to-date source object information.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Source?> getAsync(WithSourceGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSourceItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Source>(
        requestInfo, Source.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the specified source by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p><p>This request accepts the <code>metadata</code> and <code>owner</code> as arguments. It is also possible to update type specific information for selected payment methods. Please refer to our <a href="/docs/sources">payment method guides</a> for more detail.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Source?> postAsync(WithSourcePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Source>(
        requestInfo, Source.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves an existing source object. Supply the unique source ID from a source creation request and Stripe will return the corresponding up-to-date source object information.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithSourceGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSourceItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithSourceItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithSourceItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the specified source by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p><p>This request accepts the <code>metadata</code> and <code>owner</code> as arguments. It is also possible to update type specific information for selected payment methods. Please refer to our <a href="/docs/sources">payment method guides</a> for more detail.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithSourcePostRequestBody body,
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
