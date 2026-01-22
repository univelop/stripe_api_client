// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/refund.dart';
import './item/with_refund_item_request_builder.dart';
import './refunds_get_request_body.dart';
import './refunds_get_response.dart';
import './refunds_post_request_body.dart';
import './refunds_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\refunds
class RefundsRequestBuilder extends BaseRequestBuilder<RefundsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.refunds.item collection
  ///  [refund] Unique identifier of the item
  WithRefundItemRequestBuilder byRefund(String refund) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('refund', () => refund);
    return WithRefundItemRequestBuilder(urlTplParams, requestAdapter);
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
            "{+baseurl}/v1/refunds{?charge*,created*,ending_before*,expand*,limit*,payment_intent*,starting_after*}",
            pathParameters);

  /// Instantiates a new [RefundsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/refunds{?charge*,created*,ending_before*,expand*,limit*,payment_intent*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of all refunds you created. We return the refunds in sorted order, with the most recent refunds appearing first. The 10 most recent refunds are always available by default on the Charge object.</p>
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

  /// <p>When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.</p><p>Creating a new refund will refund a charge that has previously been created but not yet refunded.Funds will be refunded to the credit or debit card that was originally charged.</p><p>You can optionally refund only part of a charge.You can do so multiple times, until the entire charge has been refunded.</p><p>Once entirely refunded, a charge can’t be refunded again.This method will raise an error when called on an already-refunded charge,or when trying to refund more money than is left on a charge.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Refund?> postAsync(RefundsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Refund>(
        requestInfo, Refund.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of all refunds you created. We return the refunds in sorted order, with the most recent refunds appearing first. The 10 most recent refunds are always available by default on the Charge object.</p>
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

  /// <p>When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.</p><p>Creating a new refund will refund a charge that has previously been created but not yet refunded.Funds will be refunded to the credit or debit card that was originally charged.</p><p>You can optionally refund only part of a charge.You can do so multiple times, until the entire charge has been refunded.</p><p>Once entirely refunded, a charge can’t be refunded again.This method will raise an error when called on an already-refunded charge,or when trying to refund more money than is left on a charge.</p>
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
