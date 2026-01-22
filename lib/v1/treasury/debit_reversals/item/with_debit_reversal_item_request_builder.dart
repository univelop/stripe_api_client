// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/treasury/debit_reversal.dart';
import './with_debit_reversal_get_request_body.dart';
import './with_debit_reversal_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\debit_reversals\{debit_reversal}
class WithDebitReversalItemRequestBuilder
    extends BaseRequestBuilder<WithDebitReversalItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithDebitReversalItemRequestBuilder clone() {
    return WithDebitReversalItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithDebitReversalItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithDebitReversalItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/debit_reversals/{debit_reversal}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithDebitReversalItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithDebitReversalItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/debit_reversals/{debit_reversal}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a DebitReversal object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DebitReversal?> getAsync(WithDebitReversalGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithDebitReversalItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DebitReversal>(
        requestInfo, DebitReversal.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a DebitReversal object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithDebitReversalGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithDebitReversalItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithDebitReversalItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithDebitReversalItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
