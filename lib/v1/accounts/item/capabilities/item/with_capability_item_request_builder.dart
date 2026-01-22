// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/capability.dart';
import '../../../../../models/error.dart';
import './with_capability_get_request_body.dart';
import './with_capability_item_request_builder_get_query_parameters.dart';
import './with_capability_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\capabilities\{capability}
class WithCapabilityItemRequestBuilder
    extends BaseRequestBuilder<WithCapabilityItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithCapabilityItemRequestBuilder clone() {
    return WithCapabilityItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithCapabilityItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCapabilityItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/capabilities/{capability}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithCapabilityItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCapabilityItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/capabilities/{capability}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves information about the specified Account Capability.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Capability?> getAsync(WithCapabilityGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCapabilityItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Capability>(
        requestInfo, Capability.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates an existing Account Capability. Request or remove a capability by updating its <code>requested</code> parameter.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Capability?> postAsync(WithCapabilityPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Capability>(
        requestInfo, Capability.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves information about the specified Account Capability.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithCapabilityGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCapabilityItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithCapabilityItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithCapabilityItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates an existing Account Capability. Request or remove a capability by updating its <code>requested</code> parameter.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithCapabilityPostRequestBody body,
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
