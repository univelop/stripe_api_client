// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/charge.dart';
import '../../models/error.dart';
import './charges_get_request_body.dart';
import './charges_get_response.dart';
import './charges_post_request_body.dart';
import './charges_request_builder_get_query_parameters.dart';
import './item/with_charge_item_request_builder.dart';
import './search/search_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\charges
class ChargesRequestBuilder extends BaseRequestBuilder<ChargesRequestBuilder> {
  ///  The search property
  SearchRequestBuilder get search {
    return SearchRequestBuilder(pathParameters, requestAdapter);
  }

  /// Gets an item from the ApiSdk.v1.charges.item collection
  ///  [charge] Unique identifier of the item
  WithChargeItemRequestBuilder byCharge(String charge) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('charge', () => charge);
    return WithChargeItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ChargesRequestBuilder clone() {
    return ChargesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ChargesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ChargesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/charges{?created*,customer*,ending_before*,expand*,limit*,payment_intent*,starting_after*,transfer_group*}",
            pathParameters);

  /// Instantiates a new [ChargesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ChargesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/charges{?created*,customer*,ending_before*,expand*,limit*,payment_intent*,starting_after*,transfer_group*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of charges you’ve previously created. The charges are returned in sorted order, with the most recent charges appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ChargesGetResponse?> getAsync(ChargesGetRequestBody body,
      [void Function(
              RequestConfiguration<ChargesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ChargesGetResponse>(requestInfo,
        ChargesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>This method is no longer recommended—use the <a href="/docs/api/payment_intents">Payment Intents API</a>to initiate a new payment instead. Confirmation of the PaymentIntent creates the <code>Charge</code>object used to request payment.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Charge?> postAsync(ChargesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Charge>(
        requestInfo, Charge.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of charges you’ve previously created. The charges are returned in sorted order, with the most recent charges appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ChargesGetRequestBody body,
      [void Function(
              RequestConfiguration<ChargesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ChargesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => ChargesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>This method is no longer recommended—use the <a href="/docs/api/payment_intents">Payment Intents API</a>to initiate a new payment instead. Confirmation of the PaymentIntent creates the <code>Charge</code>object used to request payment.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ChargesPostRequestBody body,
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
