// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/treasury/credit_reversal.dart';
import './with_credit_reversal_get_request_body.dart';
import './with_credit_reversal_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\credit_reversals\{credit_reversal}
class WithCreditReversalItemRequestBuilder
    extends BaseRequestBuilder<WithCreditReversalItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithCreditReversalItemRequestBuilder clone() {
    return WithCreditReversalItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithCreditReversalItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCreditReversalItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/credit_reversals/{credit_reversal}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithCreditReversalItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithCreditReversalItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/credit_reversals/{credit_reversal}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an existing CreditReversal by passing the unique CreditReversal ID from either the CreditReversal creation request or CreditReversal list</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CreditReversal?> getAsync(WithCreditReversalGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCreditReversalItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CreditReversal>(
        requestInfo, CreditReversal.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an existing CreditReversal by passing the unique CreditReversal ID from either the CreditReversal creation request or CreditReversal list</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithCreditReversalGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithCreditReversalItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithCreditReversalItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithCreditReversalItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
