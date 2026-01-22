// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/deleted_discount.dart';
import '../../../../../../models/discount.dart';
import '../../../../../../models/error.dart';
import './discount_delete_request_body.dart';
import './discount_get_request_body.dart';
import './discount_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\subscriptions\{subscription_exposed_id}\discount
class DiscountRequestBuilder
    extends BaseRequestBuilder<DiscountRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  DiscountRequestBuilder clone() {
    return DiscountRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [DiscountRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DiscountRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/subscriptions/{subscription_exposed_id}/discount{?expand*}",
            pathParameters);

  /// Instantiates a new [DiscountRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DiscountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/subscriptions/{subscription_exposed_id}/discount{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Removes the currently applied discount on a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedDiscount?> deleteAsync(DiscountDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedDiscount>(requestInfo,
        DeletedDiscount.createFromDiscriminatorValue, errorMapping);
  }

  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Discount?> getAsync(DiscountGetRequestBody body,
      [void Function(
              RequestConfiguration<DiscountRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Discount>(
        requestInfo, Discount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Removes the currently applied discount on a customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(DiscountDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(DiscountGetRequestBody body,
      [void Function(
              RequestConfiguration<DiscountRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DiscountRequestBuilderGetQueryParameters>(
        requestConfiguration, () => DiscountRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
