// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tax/association.dart';
import './find_get_request_body.dart';
import './find_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax\associations\find
class FindRequestBuilder extends BaseRequestBuilder<FindRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  FindRequestBuilder clone() {
    return FindRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FindRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FindRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/tax/associations/find?payment_intent={payment_intent}{&expand*}",
            pathParameters);

  /// Instantiates a new [FindRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FindRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/tax/associations/find?payment_intent={payment_intent}{&expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Finds a tax association object by PaymentIntent id.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Association?> getAsync(FindGetRequestBody body,
      [void Function(
              RequestConfiguration<FindRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Association>(
        requestInfo, Association.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Finds a tax association object by PaymentIntent id.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(FindGetRequestBody body,
      [void Function(
              RequestConfiguration<FindRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<FindRequestBuilderGetQueryParameters>(
        requestConfiguration, () => FindRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
