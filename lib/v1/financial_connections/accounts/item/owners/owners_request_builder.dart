// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import './owners_get_request_body.dart';
import './owners_get_response.dart';
import './owners_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\financial_connections\accounts\{account}\owners
class OwnersRequestBuilder extends BaseRequestBuilder<OwnersRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  OwnersRequestBuilder clone() {
    return OwnersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [OwnersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OwnersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/accounts/{account}/owners?ownership={ownership}{&ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [OwnersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OwnersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/financial_connections/accounts/{account}/owners?ownership={ownership}{&ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Lists all owners for a given <code>Account</code></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<OwnersGetResponse?> getAsync(OwnersGetRequestBody body,
      [void Function(
              RequestConfiguration<OwnersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<OwnersGetResponse>(requestInfo,
        OwnersGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Lists all owners for a given <code>Account</code></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(OwnersGetRequestBody body,
      [void Function(
              RequestConfiguration<OwnersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<OwnersRequestBuilderGetQueryParameters>(
        requestConfiguration, () => OwnersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
