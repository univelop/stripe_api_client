// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/funding_instructions.dart';
import './funding_instructions_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\funding_instructions
class FundingInstructionsRequestBuilder
    extends BaseRequestBuilder<FundingInstructionsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  FundingInstructionsRequestBuilder clone() {
    return FundingInstructionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FundingInstructionsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FundingInstructionsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/funding_instructions",
            pathParameters);

  /// Instantiates a new [FundingInstructionsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FundingInstructionsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/funding_instructions",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, newfunding instructions will be created. If funding instructions have already been created for a given customer, the samefunding instructions will be retrieved. In other words, we will return the same funding instructions each time.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FundingInstructions?> postAsync(
      FundingInstructionsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FundingInstructions>(requestInfo,
        FundingInstructions.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, newfunding instructions will be created. If funding instructions have already been created for a given customer, the samefunding instructions will be retrieved. In other words, we will return the same funding instructions each time.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      FundingInstructionsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
