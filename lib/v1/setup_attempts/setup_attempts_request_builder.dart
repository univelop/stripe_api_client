// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './setup_attempts_get_request_body.dart';
import './setup_attempts_get_response.dart';
import './setup_attempts_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\setup_attempts
class SetupAttemptsRequestBuilder
    extends BaseRequestBuilder<SetupAttemptsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  SetupAttemptsRequestBuilder clone() {
    return SetupAttemptsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SetupAttemptsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SetupAttemptsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/setup_attempts?setup_intent={setup_intent}{&created*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SetupAttemptsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SetupAttemptsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/setup_attempts?setup_intent={setup_intent}{&created*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of SetupAttempts that associate with a provided SetupIntent.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SetupAttemptsGetResponse?> getAsync(SetupAttemptsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SetupAttemptsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SetupAttemptsGetResponse>(requestInfo,
        SetupAttemptsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of SetupAttempts that associate with a provided SetupIntent.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SetupAttemptsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SetupAttemptsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SetupAttemptsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => SetupAttemptsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
