// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/treasury/received_debit.dart';
import './received_debits_get_request_body.dart';
import './received_debits_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\received_debits\{id}
class ReceivedDebitsItemRequestBuilder
    extends BaseRequestBuilder<ReceivedDebitsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ReceivedDebitsItemRequestBuilder clone() {
    return ReceivedDebitsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReceivedDebitsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReceivedDebitsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/received_debits/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [ReceivedDebitsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReceivedDebitsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/received_debits/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing ReceivedDebit by passing the unique ReceivedDebit ID from the ReceivedDebit list</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReceivedDebit?> getAsync(ReceivedDebitsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReceivedDebitsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReceivedDebit>(
        requestInfo, ReceivedDebit.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing ReceivedDebit by passing the unique ReceivedDebit ID from the ReceivedDebit list</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReceivedDebitsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReceivedDebitsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReceivedDebitsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ReceivedDebitsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
