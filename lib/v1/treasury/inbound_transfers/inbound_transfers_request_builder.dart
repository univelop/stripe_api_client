// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/treasury/inbound_transfer.dart';
import './inbound_transfers_get_request_body.dart';
import './inbound_transfers_get_response.dart';
import './inbound_transfers_post_request_body.dart';
import './inbound_transfers_request_builder_get_query_parameters.dart';
import './item/item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\inbound_transfers
class InboundTransfersRequestBuilder
    extends BaseRequestBuilder<InboundTransfersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.inbound_transfers.item collection
  ///  [id] Unique identifier of the item
  ItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('%2Did', () => id);
    return ItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  InboundTransfersRequestBuilder clone() {
    return InboundTransfersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [InboundTransfersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InboundTransfersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/inbound_transfers?financial_account={financial_account}{&ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [InboundTransfersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  InboundTransfersRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/inbound_transfers?financial_account={financial_account}{&ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of InboundTransfers sent from the specified FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InboundTransfersGetResponse?> getAsync(
      InboundTransfersGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  InboundTransfersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InboundTransfersGetResponse>(requestInfo,
        InboundTransfersGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates an InboundTransfer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<InboundTransfer?> postAsync(InboundTransfersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<InboundTransfer>(requestInfo,
        InboundTransfer.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of InboundTransfers sent from the specified FinancialAccount.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      InboundTransfersGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  InboundTransfersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<InboundTransfersRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => InboundTransfersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates an InboundTransfer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      InboundTransfersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: '{+baseurl}/v1/treasury/inbound_transfers',
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
