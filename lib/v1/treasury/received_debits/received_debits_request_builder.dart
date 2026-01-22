// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/received_debits_item_request_builder.dart';
import './received_debits_get_request_body.dart';
import './received_debits_get_response.dart';
import './received_debits_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\received_debits
class ReceivedDebitsRequestBuilder
    extends BaseRequestBuilder<ReceivedDebitsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.received_debits.item collection
  ///  [id] Unique identifier of the item
  ReceivedDebitsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return ReceivedDebitsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ReceivedDebitsRequestBuilder clone() {
    return ReceivedDebitsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReceivedDebitsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReceivedDebitsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/received_debits?financial_account={financial_account}{&ending_before*,expand*,limit*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [ReceivedDebitsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReceivedDebitsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/received_debits?financial_account={financial_account}{&ending_before*,expand*,limit*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of ReceivedDebits.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReceivedDebitsGetResponse?> getAsync(ReceivedDebitsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReceivedDebitsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReceivedDebitsGetResponse>(requestInfo,
        ReceivedDebitsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of ReceivedDebits.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReceivedDebitsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReceivedDebitsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReceivedDebitsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ReceivedDebitsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
