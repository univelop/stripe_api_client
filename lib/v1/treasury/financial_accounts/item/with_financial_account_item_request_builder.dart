// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/treasury/financial_account.dart';
import './close/close_request_builder.dart';
import './features/features_request_builder.dart';
import './with_financial_account_get_request_body.dart';
import './with_financial_account_item_request_builder_get_query_parameters.dart';
import './with_financial_account_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\financial_accounts\{financial_account}
class WithFinancialAccountItemRequestBuilder
    extends BaseRequestBuilder<WithFinancialAccountItemRequestBuilder> {
  ///  The close property
  CloseRequestBuilder get close {
    return CloseRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The features property
  FeaturesRequestBuilder get features {
    return FeaturesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithFinancialAccountItemRequestBuilder clone() {
    return WithFinancialAccountItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithFinancialAccountItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithFinancialAccountItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/financial_accounts/{financial_account}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithFinancialAccountItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithFinancialAccountItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/financial_accounts/{financial_account}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FinancialAccount?> getAsync(WithFinancialAccountGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithFinancialAccountItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FinancialAccount>(requestInfo,
        FinancialAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the details of a FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FinancialAccount?> postAsync(WithFinancialAccountPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FinancialAccount>(requestInfo,
        FinancialAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithFinancialAccountGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithFinancialAccountItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithFinancialAccountItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithFinancialAccountItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the details of a FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithFinancialAccountPostRequestBody body,
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
