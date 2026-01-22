// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/bank_account.dart';
import '../../../../../models/error.dart';
import './bank_accounts_delete_request_body.dart';
import './bank_accounts_delete_response.dart';
import './bank_accounts_get_request_body.dart';
import './bank_accounts_item_request_builder_get_query_parameters.dart';
import './bank_accounts_post_request_body.dart';
import './bank_accounts_post_response.dart';
import './verify/verify_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\bank_accounts\{id}
class BankAccountsItemRequestBuilder
    extends BaseRequestBuilder<BankAccountsItemRequestBuilder> {
  ///  The verify property
  VerifyRequestBuilder get verify {
    return VerifyRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  BankAccountsItemRequestBuilder clone() {
    return BankAccountsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [BankAccountsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BankAccountsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/bank_accounts/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [BankAccountsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BankAccountsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/bank_accounts/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Delete a specified source for a given customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<BankAccountsDeleteResponse?> deleteAsync(
      BankAccountsDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<BankAccountsDeleteResponse>(requestInfo,
        BankAccountsDeleteResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>By default, you can see the 10 most recent sources stored on a Customer directly on the object, but you can also retrieve details about a specific bank account stored on the Stripe account.</p>
  /// @deprecated
  ///
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  @Deprecated("")
  Future<BankAccount?> getAsync(BankAccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  BankAccountsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<BankAccount>(
        requestInfo, BankAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Update a specified source for a given customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<BankAccountsPostResponse?> postAsync(BankAccountsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<BankAccountsPostResponse>(requestInfo,
        BankAccountsPostResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Delete a specified source for a given customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      BankAccountsDeleteRequestBody body,
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

  /// <p>By default, you can see the 10 most recent sources stored on a Customer directly on the object, but you can also retrieve details about a specific bank account stored on the Stripe account.</p>
  /// @deprecated
  ///
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  @Deprecated("")
  RequestInformation toGetRequestInformation(BankAccountsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  BankAccountsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<BankAccountsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => BankAccountsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Update a specified source for a given customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(BankAccountsPostRequestBody body,
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
