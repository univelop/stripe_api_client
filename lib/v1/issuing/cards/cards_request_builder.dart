// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/issuing/card.dart';
import './cards_get_request_body.dart';
import './cards_get_response.dart';
import './cards_post_request_body.dart';
import './cards_request_builder_get_query_parameters.dart';
import './item/with_card_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\cards
class CardsRequestBuilder extends BaseRequestBuilder<CardsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.issuing.cards.item collection
  ///  [card] Unique identifier of the item
  WithCardItemRequestBuilder byCard(String card) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('card', () => card);
    return WithCardItemRequestBuilder(urlTplParams, requestAdapter);
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
            "{+baseurl}/v1/issuing/cards{?cardholder*,created*,ending_before*,exp_month*,exp_year*,expand*,last4*,limit*,personalization_design*,starting_after*,status*,type*}",
            pathParameters);

  /// Instantiates a new [CardsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CardsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/cards{?cardholder*,created*,ending_before*,exp_month*,exp_year*,expand*,last4*,limit*,personalization_design*,starting_after*,status*,type*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of Issuing <code>Card</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
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

  /// <p>Creates an Issuing <code>Card</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Card?> postAsync(CardsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Card>(
        requestInfo, Card.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of Issuing <code>Card</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
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

  /// <p>Creates an Issuing <code>Card</code> object.</p>
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
