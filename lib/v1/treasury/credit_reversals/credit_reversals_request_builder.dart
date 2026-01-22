// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/treasury/credit_reversal.dart';
import './credit_reversals_get_request_body.dart';
import './credit_reversals_get_response.dart';
import './credit_reversals_post_request_body.dart';
import './credit_reversals_request_builder_get_query_parameters.dart';
import './item/with_credit_reversal_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\credit_reversals
class CreditReversalsRequestBuilder
    extends BaseRequestBuilder<CreditReversalsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.credit_reversals.item collection
  ///  [creditReversal] Unique identifier of the item
  WithCreditReversalItemRequestBuilder byCreditReversal(String creditReversal) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('credit_reversal', () => creditReversal);
    return WithCreditReversalItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CreditReversalsRequestBuilder clone() {
    return CreditReversalsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CreditReversalsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditReversalsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/credit_reversals?financial_account={financial_account}{&ending_before*,expand*,limit*,received_credit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [CreditReversalsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CreditReversalsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/credit_reversals?financial_account={financial_account}{&ending_before*,expand*,limit*,received_credit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of CreditReversals.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditReversalsGetResponse?> getAsync(
      CreditReversalsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditReversalsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditReversalsGetResponse>(requestInfo,
        CreditReversalsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Reverses a ReceivedCredit and creates a CreditReversal object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditReversal?> postAsync(CreditReversalsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditReversal>(
        requestInfo, CreditReversal.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of CreditReversals.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CreditReversalsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CreditReversalsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CreditReversalsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CreditReversalsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Reverses a ReceivedCredit and creates a CreditReversal object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      CreditReversalsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: '{+baseurl}/v1/treasury/credit_reversals',
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
