// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/promotion_code.dart';
import './with_promotion_code_get_request_body.dart';
import './with_promotion_code_item_request_builder_get_query_parameters.dart';
import './with_promotion_code_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\promotion_codes\{promotion_code}
class WithPromotionCodeItemRequestBuilder
    extends BaseRequestBuilder<WithPromotionCodeItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithPromotionCodeItemRequestBuilder clone() {
    return WithPromotionCodeItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithPromotionCodeItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPromotionCodeItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/promotion_codes/{promotion_code}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithPromotionCodeItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPromotionCodeItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/promotion_codes/{promotion_code}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing <code>code</code> use <a href="/docs/api/promotion_codes/list">list</a> with the desired <code>code</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PromotionCode?> getAsync(WithPromotionCodeGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPromotionCodeItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PromotionCode>(
        requestInfo, PromotionCode.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PromotionCode?> postAsync(WithPromotionCodePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PromotionCode>(
        requestInfo, PromotionCode.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing <code>code</code> use <a href="/docs/api/promotion_codes/list">list</a> with the desired <code>code</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithPromotionCodeGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPromotionCodeItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithPromotionCodeItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithPromotionCodeItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithPromotionCodePostRequestBody body,
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
