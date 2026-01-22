// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/treasury/received_credit.dart';
import './received_credits_get_request_body.dart';
import './received_credits_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\received_credits\{id}
class ReceivedCreditsItemRequestBuilder
    extends BaseRequestBuilder<ReceivedCreditsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ReceivedCreditsItemRequestBuilder clone() {
    return ReceivedCreditsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReceivedCreditsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReceivedCreditsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/received_credits/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [ReceivedCreditsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReceivedCreditsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/received_credits/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing ReceivedCredit by passing the unique ReceivedCredit ID from the ReceivedCredit list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReceivedCredit?> getAsync(ReceivedCreditsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReceivedCreditsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReceivedCredit>(
        requestInfo, ReceivedCredit.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing ReceivedCredit by passing the unique ReceivedCredit ID from the ReceivedCredit list.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReceivedCreditsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReceivedCreditsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReceivedCreditsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ReceivedCreditsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
