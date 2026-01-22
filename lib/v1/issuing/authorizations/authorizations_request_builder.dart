// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './authorizations_get_request_body.dart';
import './authorizations_get_response.dart';
import './authorizations_request_builder_get_query_parameters.dart';
import './item/with_authorization_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\authorizations
class AuthorizationsRequestBuilder
    extends BaseRequestBuilder<AuthorizationsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.issuing.authorizations.item collection
  ///  [authorization] Unique identifier of the item
  WithAuthorizationItemRequestBuilder byAuthorization(String authorization) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('authorization', () => authorization);
    return WithAuthorizationItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  AuthorizationsRequestBuilder clone() {
    return AuthorizationsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AuthorizationsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AuthorizationsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/authorizations{?card*,cardholder*,created*,ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [AuthorizationsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AuthorizationsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/authorizations{?card*,cardholder*,created*,ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of Issuing <code>Authorization</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<AuthorizationsGetResponse?> getAsync(AuthorizationsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  AuthorizationsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<AuthorizationsGetResponse>(requestInfo,
        AuthorizationsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of Issuing <code>Authorization</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(AuthorizationsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  AuthorizationsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<AuthorizationsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => AuthorizationsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
