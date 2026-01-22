// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/fee_refund.dart';
import './item/refunds_item_request_builder.dart';
import './refunds_get_request_body.dart';
import './refunds_get_response.dart';
import './refunds_post_request_body.dart';
import './refunds_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\application_fees\{fee-id}\refunds
class RefundsRequestBuilder extends BaseRequestBuilder<RefundsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.application_fees.item.refunds.item collection
  ///  [id] Unique identifier of the item
  RefundsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return RefundsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  RefundsRequestBuilder clone() {
    return RefundsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RefundsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/application_fees/{fee%2Did}/refunds{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [RefundsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/application_fees/{fee%2Did}/refunds{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>You can see a list of the refunds belonging to a specific application fee. Note that the 10 most recent refunds are always available by default on the application fee object. If you need more than those 10, you can use this API method and the <code>limit</code> and <code>starting_after</code> parameters to page through additional refunds.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<RefundsGetResponse?> getAsync(RefundsGetRequestBody body,
      [void Function(
              RequestConfiguration<RefundsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<RefundsGetResponse>(requestInfo,
        RefundsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Refunds an application fee that has previously been collected but not yet refunded.Funds will be refunded to the Stripe account from which the fee was originally collected.</p><p>You can optionally refund only part of an application fee.You can do so multiple times, until the entire fee has been refunded.</p><p>Once entirely refunded, an application fee can’t be refunded again.This method will raise an error when called on an already-refunded application fee,or when trying to refund more money than is left on an application fee.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FeeRefund?> postAsync(RefundsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FeeRefund>(
        requestInfo, FeeRefund.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>You can see a list of the refunds belonging to a specific application fee. Note that the 10 most recent refunds are always available by default on the application fee object. If you need more than those 10, you can use this API method and the <code>limit</code> and <code>starting_after</code> parameters to page through additional refunds.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(RefundsGetRequestBody body,
      [void Function(
              RequestConfiguration<RefundsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<RefundsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => RefundsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Refunds an application fee that has previously been collected but not yet refunded.Funds will be refunded to the Stripe account from which the fee was originally collected.</p><p>You can optionally refund only part of an application fee.You can do so multiple times, until the entire fee has been refunded.</p><p>Once entirely refunded, an application fee can’t be refunded again.This method will raise an error when called on an already-refunded application fee,or when trying to refund more money than is left on an application fee.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(RefundsPostRequestBody body,
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
