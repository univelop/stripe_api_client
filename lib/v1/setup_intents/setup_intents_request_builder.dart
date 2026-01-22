// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/setup_intent.dart';
import './item/with_intent_item_request_builder.dart';
import './setup_intents_get_request_body.dart';
import './setup_intents_get_response.dart';
import './setup_intents_post_request_body.dart';
import './setup_intents_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\setup_intents
class SetupIntentsRequestBuilder
    extends BaseRequestBuilder<SetupIntentsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.setup_intents.item collection
  ///  [intent] Unique identifier of the item
  WithIntentItemRequestBuilder byIntent(String intent) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('intent', () => intent);
    return WithIntentItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SetupIntentsRequestBuilder clone() {
    return SetupIntentsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SetupIntentsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SetupIntentsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/setup_intents{?attach_to_self*,created*,customer*,customer_account*,ending_before*,expand*,limit*,payment_method*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SetupIntentsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SetupIntentsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/setup_intents{?attach_to_self*,created*,customer*,customer_account*,ending_before*,expand*,limit*,payment_method*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of SetupIntents.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SetupIntentsGetResponse?> getAsync(SetupIntentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SetupIntentsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SetupIntentsGetResponse>(requestInfo,
        SetupIntentsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a SetupIntent object.</p><p>After you create the SetupIntent, attach a payment method and <a href="/docs/api/setup_intents/confirm">confirm</a>it to collect any required permissions to charge the payment method later.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SetupIntent?> postAsync(SetupIntentsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SetupIntent>(
        requestInfo, SetupIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of SetupIntents.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SetupIntentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SetupIntentsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SetupIntentsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => SetupIntentsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a SetupIntent object.</p><p>After you create the SetupIntent, attach a payment method and <a href="/docs/api/setup_intents/confirm">confirm</a>it to collect any required permissions to charge the payment method later.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SetupIntentsPostRequestBody body,
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
