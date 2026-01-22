// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/treasury/outbound_transfer.dart';
import './cancel/cancel_request_builder.dart';
import './with_outbound_transfer_get_request_body.dart';
import './with_outbound_transfer_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\outbound_transfers\{outbound_transfer}
class WithOutboundTransferItemRequestBuilder
    extends BaseRequestBuilder<WithOutboundTransferItemRequestBuilder> {
  ///  The cancel property
  CancelRequestBuilder get cancel {
    return CancelRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithOutboundTransferItemRequestBuilder clone() {
    return WithOutboundTransferItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithOutboundTransferItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithOutboundTransferItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/outbound_transfers/{outbound_transfer}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithOutboundTransferItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithOutboundTransferItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/outbound_transfers/{outbound_transfer}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing OutboundTransfer by passing the unique OutboundTransfer ID from either the OutboundTransfer creation request or OutboundTransfer list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<OutboundTransfer?> getAsync(WithOutboundTransferGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithOutboundTransferItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<OutboundTransfer>(requestInfo,
        OutboundTransfer.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing OutboundTransfer by passing the unique OutboundTransfer ID from either the OutboundTransfer creation request or OutboundTransfer list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithOutboundTransferGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithOutboundTransferItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithOutboundTransferItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithOutboundTransferItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
