// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/source_transaction.dart';
import './with_source_transaction_get_request_body.dart';
import './with_source_transaction_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\sources\{source}\source_transactions\{source_transaction}
class WithSourceTransactionItemRequestBuilder
    extends BaseRequestBuilder<WithSourceTransactionItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithSourceTransactionItemRequestBuilder clone() {
    return WithSourceTransactionItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithSourceTransactionItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSourceTransactionItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}/source_transactions/{source_transaction}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithSourceTransactionItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSourceTransactionItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/sources/{source}/source_transactions/{source_transaction}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve an existing source transaction object. Supply the unique source ID from a source creation request and the source transaction ID and Stripe will return the corresponding up-to-date source object information.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SourceTransaction?> getAsync(WithSourceTransactionGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSourceTransactionItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SourceTransaction>(requestInfo,
        SourceTransaction.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve an existing source transaction object. Supply the unique source ID from a source creation request and the source transaction ID and Stripe will return the corresponding up-to-date source object information.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithSourceTransactionGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSourceTransactionItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithSourceTransactionItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithSourceTransactionItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
