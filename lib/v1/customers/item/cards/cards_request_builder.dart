// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import './cards_get_request_body.dart';
import './cards_get_response.dart';
import './cards_post_request_body.dart';
import './cards_request_builder_get_query_parameters.dart';
import './item/cards_item_request_builder.dart';
import './payment_source.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\cards
class CardsRequestBuilder extends BaseRequestBuilder<CardsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.customers.item.cards.item collection
  ///  [id] Unique identifier of the item
  CardsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return CardsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CardsRequestBuilder clone() {
    return CardsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CardsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CardsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/cards{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [CardsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CardsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/cards{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>You can see a list of the cards belonging to a customer.Note that the 10 most recent sources are always available on the <code>Customer</code> object.If you need more than those 10, you can use this API method and the <code>limit</code> and <code>starting_after</code> parameters to page through additional cards.</p>
  /// @deprecated
  ///
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  @Deprecated("")
  Future<CardsGetResponse?> getAsync(CardsGetRequestBody body,
      [void Function(
              RequestConfiguration<CardsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CardsGetResponse>(requestInfo,
        CardsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>When you create a new credit card, you must specify a customer or recipient on which to create it.</p><p>If the card’s owner has no default card, then the new card will become the default.However, if the owner already has a default, then it will not change.To change the default, you should <a href="/docs/api#update_customer">update the customer</a> to have a new <code>default_source</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentSource?> postAsync(CardsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentSource>(
        requestInfo, PaymentSource.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>You can see a list of the cards belonging to a customer.Note that the 10 most recent sources are always available on the <code>Customer</code> object.If you need more than those 10, you can use this API method and the <code>limit</code> and <code>starting_after</code> parameters to page through additional cards.</p>
  /// @deprecated
  ///
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  @Deprecated("")
  RequestInformation toGetRequestInformation(CardsGetRequestBody body,
      [void Function(
              RequestConfiguration<CardsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CardsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => CardsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>When you create a new credit card, you must specify a customer or recipient on which to create it.</p><p>If the card’s owner has no default card, then the new card will become the default.However, if the owner already has a default, then it will not change.To change the default, you should <a href="/docs/api#update_customer">update the customer</a> to have a new <code>default_source</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CardsPostRequestBody body,
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
