// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/promotion_code.dart';
import './item/with_promotion_code_item_request_builder.dart';
import './promotion_codes_get_request_body.dart';
import './promotion_codes_get_response.dart';
import './promotion_codes_post_request_body.dart';
import './promotion_codes_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\promotion_codes
class PromotionCodesRequestBuilder
    extends BaseRequestBuilder<PromotionCodesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.promotion_codes.item collection
  ///  [promotionCode] Unique identifier of the item
  WithPromotionCodeItemRequestBuilder byPromotionCode(String promotionCode) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('promotion_code', () => promotionCode);
    return WithPromotionCodeItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PromotionCodesRequestBuilder clone() {
    return PromotionCodesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PromotionCodesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PromotionCodesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/promotion_codes{?active*,code*,coupon*,created*,customer*,customer_account*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PromotionCodesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PromotionCodesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/promotion_codes{?active*,code*,coupon*,created*,customer*,customer_account*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your promotion codes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PromotionCodesGetResponse?> getAsync(PromotionCodesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PromotionCodesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PromotionCodesGetResponse>(requestInfo,
        PromotionCodesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>A promotion code points to an underlying promotion. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PromotionCode?> postAsync(PromotionCodesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PromotionCode>(
        requestInfo, PromotionCode.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your promotion codes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PromotionCodesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PromotionCodesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PromotionCodesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => PromotionCodesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>A promotion code points to an underlying promotion. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      PromotionCodesPostRequestBody body,
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
