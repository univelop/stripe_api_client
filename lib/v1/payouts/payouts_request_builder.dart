// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/payout.dart';
import './item/with_payout_item_request_builder.dart';
import './payouts_get_request_body.dart';
import './payouts_get_response.dart';
import './payouts_post_request_body.dart';
import './payouts_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payouts
class PayoutsRequestBuilder extends BaseRequestBuilder<PayoutsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.payouts.item collection
  ///  [payout] Unique identifier of the item
  WithPayoutItemRequestBuilder byPayout(String payout) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('payout', () => payout);
    return WithPayoutItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PayoutsRequestBuilder clone() {
    return PayoutsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PayoutsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PayoutsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payouts{?arrival_date*,created*,destination*,ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [PayoutsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PayoutsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payouts{?arrival_date*,created*,destination*,ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of existing payouts sent to third-party bank accounts or payouts that Stripe sent to you. The payouts return in sorted order, with the most recently created payouts appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PayoutsGetResponse?> getAsync(PayoutsGetRequestBody body,
      [void Function(
              RequestConfiguration<PayoutsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PayoutsGetResponse>(requestInfo,
        PayoutsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>To send funds to your own bank account, create a new payout object. Your <a href="#balance">Stripe balance</a> must cover the payout amount. If it doesn’t, you receive an “Insufficient Funds” error.</p><p>If your API key is in test mode, money won’t actually be sent, though every other action occurs as if you’re in live mode.</p><p>If you create a manual payout on a Stripe account that uses multiple payment source types, you need to specify the source type balance that the payout draws from. The <a href="#balance_object">balance object</a> details available and pending amounts by source type.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Payout?> postAsync(PayoutsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Payout>(
        requestInfo, Payout.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of existing payouts sent to third-party bank accounts or payouts that Stripe sent to you. The payouts return in sorted order, with the most recently created payouts appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PayoutsGetRequestBody body,
      [void Function(
              RequestConfiguration<PayoutsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PayoutsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => PayoutsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>To send funds to your own bank account, create a new payout object. Your <a href="#balance">Stripe balance</a> must cover the payout amount. If it doesn’t, you receive an “Insufficient Funds” error.</p><p>If your API key is in test mode, money won’t actually be sent, though every other action occurs as if you’re in live mode.</p><p>If you create a manual payout on a Stripe account that uses multiple payment source types, you need to specify the source type balance that the payout draws from. The <a href="#balance_object">balance object</a> details available and pending amounts by source type.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(PayoutsPostRequestBody body,
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
