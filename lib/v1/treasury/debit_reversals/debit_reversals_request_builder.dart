// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/treasury/debit_reversal.dart';
import './debit_reversals_get_request_body.dart';
import './debit_reversals_get_response.dart';
import './debit_reversals_post_request_body.dart';
import './debit_reversals_request_builder_get_query_parameters.dart';
import './item/with_debit_reversal_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\debit_reversals
class DebitReversalsRequestBuilder
    extends BaseRequestBuilder<DebitReversalsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.debit_reversals.item collection
  ///  [debitReversal] Unique identifier of the item
  WithDebitReversalItemRequestBuilder byDebitReversal(String debitReversal) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('debit_reversal', () => debitReversal);
    return WithDebitReversalItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  DebitReversalsRequestBuilder clone() {
    return DebitReversalsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [DebitReversalsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DebitReversalsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/debit_reversals?financial_account={financial_account}{&ending_before*,expand*,limit*,received_debit*,resolution*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [DebitReversalsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DebitReversalsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/debit_reversals?financial_account={financial_account}{&ending_before*,expand*,limit*,received_debit*,resolution*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of DebitReversals.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DebitReversalsGetResponse?> getAsync(DebitReversalsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  DebitReversalsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DebitReversalsGetResponse>(requestInfo,
        DebitReversalsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Reverses a ReceivedDebit and creates a DebitReversal object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DebitReversal?> postAsync(DebitReversalsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DebitReversal>(
        requestInfo, DebitReversal.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of DebitReversals.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(DebitReversalsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  DebitReversalsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DebitReversalsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => DebitReversalsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Reverses a ReceivedDebit and creates a DebitReversal object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      DebitReversalsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: '{+baseurl}/v1/treasury/debit_reversals',
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
