// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/billing/credit_grant.dart';
import '../../../../models/error.dart';
import './credit_grants_get_request_body.dart';
import './credit_grants_item_request_builder_get_query_parameters.dart';
import './credit_grants_post_request_body.dart';
import './expire/expire_request_builder.dart';
import './void_/void_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\credit_grants\{id}
class CreditGrantsItemRequestBuilder
    extends BaseRequestBuilder<CreditGrantsItemRequestBuilder> {
  ///  The expire property
  ExpireRequestBuilder get expire {
    return ExpireRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The void property
  VoidRequestBuilder get void_ {
    return VoidRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CreditGrantsItemRequestBuilder clone() {
    return CreditGrantsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreditGrantsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditGrantsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_grants/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [CreditGrantsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditGrantsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing/credit_grants/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a credit grant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditGrant?> getAsync(CreditGrantsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditGrantsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditGrant>(
        requestInfo, CreditGrant.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a credit grant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditGrant?> postAsync(CreditGrantsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditGrant>(
        requestInfo, CreditGrant.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a credit grant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CreditGrantsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditGrantsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CreditGrantsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CreditGrantsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a credit grant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CreditGrantsPostRequestBody body,
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
