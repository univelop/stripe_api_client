// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/financial_connections/account.dart';
import './disconnect/disconnect_request_builder.dart';
import './owners/owners_request_builder.dart';
import './refresh/refresh_request_builder.dart';
import './with_account_get_request_body.dart';
import './with_account_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\linked_accounts\{account}
class WithAccountItemRequestBuilder
    extends BaseRequestBuilder<WithAccountItemRequestBuilder> {
  ///  The disconnect property
  DisconnectRequestBuilder get disconnect {
    return DisconnectRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The owners property
  OwnersRequestBuilder get owners {
    return OwnersRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The refresh property
  RefreshRequestBuilder get refresh {
    return RefreshRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithAccountItemRequestBuilder clone() {
    return WithAccountItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithAccountItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/linked_accounts/{account}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithAccountItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/linked_accounts/{account}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an Financial Connections <code>Account</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Account?> getAsync(WithAccountGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithAccountItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Account>(
        requestInfo, Account.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an Financial Connections <code>Account</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithAccountGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithAccountItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithAccountItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithAccountItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
