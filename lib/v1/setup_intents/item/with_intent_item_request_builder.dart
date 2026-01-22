// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/setup_intent.dart';
import './cancel/cancel_request_builder.dart';
import './confirm/confirm_request_builder.dart';
import './verify_microdeposits/verify_microdeposits_request_builder.dart';
import './with_intent_get_request_body.dart';
import './with_intent_item_request_builder_get_query_parameters.dart';
import './with_intent_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\setup_intents\{intent}
class WithIntentItemRequestBuilder
    extends BaseRequestBuilder<WithIntentItemRequestBuilder> {
  ///  The cancel property
  CancelRequestBuilder get cancel {
    return CancelRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The confirm property
  ConfirmRequestBuilder get confirm {
    return ConfirmRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The verify_microdeposits property
  VerifyMicrodepositsRequestBuilder get verifyMicrodeposits {
    return VerifyMicrodepositsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithIntentItemRequestBuilder clone() {
    return WithIntentItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithIntentItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithIntentItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/setup_intents/{intent}{?client_secret*,expand*}",
            pathParameters);

  /// Instantiates a new [WithIntentItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithIntentItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/setup_intents/{intent}{?client_secret*,expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a SetupIntent that has previously been created. </p><p>Client-side retrieval using a publishable key is allowed when the <code>client_secret</code> is provided in the query string. </p><p>When retrieved with a publishable key, only a subset of properties will be returned. Please refer to the <a href="#setup_intent_object">SetupIntent</a> object reference for more details.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SetupIntent?> getAsync(WithIntentGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithIntentItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SetupIntent>(
        requestInfo, SetupIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a SetupIntent object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SetupIntent?> postAsync(WithIntentPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SetupIntent>(
        requestInfo, SetupIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a SetupIntent that has previously been created. </p><p>Client-side retrieval using a publishable key is allowed when the <code>client_secret</code> is provided in the query string. </p><p>When retrieved with a publishable key, only a subset of properties will be returned. Please refer to the <a href="#setup_intent_object">SetupIntent</a> object reference for more details.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithIntentGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithIntentItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithIntentItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithIntentItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a SetupIntent object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithIntentPostRequestBody body,
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
