// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/issuing/authorization.dart';
import './approve/approve_request_builder.dart';
import './decline/decline_request_builder.dart';
import './with_authorization_get_request_body.dart';
import './with_authorization_item_request_builder_get_query_parameters.dart';
import './with_authorization_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\authorizations\{authorization}
class WithAuthorizationItemRequestBuilder
    extends BaseRequestBuilder<WithAuthorizationItemRequestBuilder> {
  ///  The approve property
  ApproveRequestBuilder get approve {
    return ApproveRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The decline property
  DeclineRequestBuilder get decline {
    return DeclineRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithAuthorizationItemRequestBuilder clone() {
    return WithAuthorizationItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithAuthorizationItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithAuthorizationItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/authorizations/{authorization}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithAuthorizationItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithAuthorizationItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/authorizations/{authorization}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves an Issuing <code>Authorization</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Authorization?> getAsync(WithAuthorizationGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithAuthorizationItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Authorization>(
        requestInfo, Authorization.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the specified Issuing <code>Authorization</code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Authorization?> postAsync(WithAuthorizationPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Authorization>(
        requestInfo, Authorization.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves an Issuing <code>Authorization</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithAuthorizationGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithAuthorizationItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithAuthorizationItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithAuthorizationItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the specified Issuing <code>Authorization</code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithAuthorizationPostRequestBody body,
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
