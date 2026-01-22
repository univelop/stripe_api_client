// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/deleted_subscription_item.dart';
import '../../../models/error.dart';
import '../../../models/subscription_item.dart';
import './with_item_delete_request_body.dart';
import './with_item_get_request_body.dart';
import './with_item_item_request_builder_get_query_parameters.dart';
import './with_item_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\subscription_items\{item}
class WithItemItemRequestBuilder
    extends BaseRequestBuilder<WithItemItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithItemItemRequestBuilder clone() {
    return WithItemItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithItemItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithItemItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscription_items/{item}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithItemItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithItemItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscription_items/{item}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DeletedSubscriptionItem?> deleteAsync(WithItemDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DeletedSubscriptionItem>(requestInfo,
        DeletedSubscriptionItem.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the subscription item with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SubscriptionItem?> getAsync(WithItemGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithItemItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SubscriptionItem>(requestInfo,
        SubscriptionItem.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the plan or quantity of an item on a current subscription.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SubscriptionItem?> postAsync(WithItemPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SubscriptionItem>(requestInfo,
        SubscriptionItem.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Deletes an item from the subscription. Removing a subscription item from a subscription will not cancel the subscription.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(WithItemDeleteRequestBody body,
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

  /// <p>Retrieves the subscription item with the given ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithItemGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithItemItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithItemItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithItemItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the plan or quantity of an item on a current subscription.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithItemPostRequestBody body,
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
