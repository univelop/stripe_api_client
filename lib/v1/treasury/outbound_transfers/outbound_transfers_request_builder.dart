// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/treasury/outbound_transfer.dart';
import './item/with_outbound_transfer_item_request_builder.dart';
import './outbound_transfers_get_request_body.dart';
import './outbound_transfers_get_response.dart';
import './outbound_transfers_post_request_body.dart';
import './outbound_transfers_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\outbound_transfers
class OutboundTransfersRequestBuilder
    extends BaseRequestBuilder<OutboundTransfersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.outbound_transfers.item collection
  ///  [outboundTransfer] Unique identifier of the item
  WithOutboundTransferItemRequestBuilder byOutboundTransfer(
      String outboundTransfer) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('outbound_transfer', () => outboundTransfer);
    return WithOutboundTransferItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  OutboundTransfersRequestBuilder clone() {
    return OutboundTransfersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [OutboundTransfersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundTransfersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/outbound_transfers?financial_account={financial_account}{&ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [OutboundTransfersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  OutboundTransfersRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/outbound_transfers?financial_account={financial_account}{&ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of OutboundTransfers sent from the specified FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<OutboundTransfersGetResponse?> getAsync(
      OutboundTransfersGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  OutboundTransfersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<OutboundTransfersGetResponse>(
        requestInfo,
        OutboundTransfersGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Creates an OutboundTransfer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<OutboundTransfer?> postAsync(OutboundTransfersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<OutboundTransfer>(requestInfo,
        OutboundTransfer.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of OutboundTransfers sent from the specified FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      OutboundTransfersGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  OutboundTransfersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<OutboundTransfersRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => OutboundTransfersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates an OutboundTransfer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      OutboundTransfersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: '{+baseurl}/v1/treasury/outbound_transfers',
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
