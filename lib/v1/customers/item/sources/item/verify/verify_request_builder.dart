// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/bank_account.dart';
import '../../../../../../models/error.dart';
import './verify_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\customers\{customer}\sources\{id}\verify
class VerifyRequestBuilder extends BaseRequestBuilder<VerifyRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  VerifyRequestBuilder clone() {
    return VerifyRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [VerifyRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  VerifyRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/sources/{id}/verify",
            pathParameters);

  /// Instantiates a new [VerifyRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  VerifyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/customers/{customer}/sources/{id}/verify",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Verify a specified bank account for a given customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<BankAccount?> postAsync(VerifyPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<BankAccount>(
        requestInfo, BankAccount.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Verify a specified bank account for a given customer.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(VerifyPostRequestBody body,
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
