// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/payment_intent.dart';
import './item/with_intent_item_request_builder.dart';
import './payment_intents_get_request_body.dart';
import './payment_intents_get_response.dart';
import './payment_intents_post_request_body.dart';
import './payment_intents_request_builder_get_query_parameters.dart';
import './search/search_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_intents
class PaymentIntentsRequestBuilder
    extends BaseRequestBuilder<PaymentIntentsRequestBuilder> {
  ///  The search property
  SearchRequestBuilder get search {
    return SearchRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.payment_intents.item collection
  ///  [intent] Unique identifier of the item
  WithIntentItemRequestBuilder byIntent(String intent) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('intent', () => intent);
    return WithIntentItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PaymentIntentsRequestBuilder clone() {
    return PaymentIntentsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentIntentsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentIntentsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents{?created*,customer*,customer_account*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PaymentIntentsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentIntentsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_intents{?created*,customer*,customer_account*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of PaymentIntents.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentIntentsGetResponse?> getAsync(PaymentIntentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentIntentsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentIntentsGetResponse>(requestInfo,
        PaymentIntentsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a PaymentIntent object.</p><p>After the PaymentIntent is created, attach a payment method and <a href="/docs/api/payment_intents/confirm">confirm</a>to continue the payment. Learn more about <a href="/docs/payments/payment-intents">the available payment flowswith the Payment Intents API</a>.</p><p>When you use <code>confirm=true</code> during creation, it’s equivalent to creatingand confirming the PaymentIntent in the same call. You can use any parametersavailable in the <a href="/docs/api/payment_intents/confirm">confirm API</a> when you supply<code>confirm=true</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentIntent?> postAsync(PaymentIntentsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentIntent>(
        requestInfo, PaymentIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of PaymentIntents.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PaymentIntentsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentIntentsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PaymentIntentsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => PaymentIntentsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a PaymentIntent object.</p><p>After the PaymentIntent is created, attach a payment method and <a href="/docs/api/payment_intents/confirm">confirm</a>to continue the payment. Learn more about <a href="/docs/payments/payment-intents">the available payment flowswith the Payment Intents API</a>.</p><p>When you use <code>confirm=true</code> during creation, it’s equivalent to creatingand confirming the PaymentIntent in the same call. You can use any parametersavailable in the <a href="/docs/api/payment_intents/confirm">confirm API</a> when you supply<code>confirm=true</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      PaymentIntentsPostRequestBody body,
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
