// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/issuing/settlement.dart';
import './with_settlement_get_request_body.dart';
import './with_settlement_item_request_builder_get_query_parameters.dart';
import './with_settlement_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\settlements\{settlement}
class WithSettlementItemRequestBuilder
    extends BaseRequestBuilder<WithSettlementItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithSettlementItemRequestBuilder clone() {
    return WithSettlementItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithSettlementItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSettlementItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/settlements/{settlement}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithSettlementItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithSettlementItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/settlements/{settlement}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves an Issuing <code>Settlement</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Settlement?> getAsync(WithSettlementGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSettlementItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Settlement>(
        requestInfo, Settlement.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the specified Issuing <code>Settlement</code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Settlement?> postAsync(WithSettlementPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Settlement>(
        requestInfo, Settlement.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves an Issuing <code>Settlement</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithSettlementGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithSettlementItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithSettlementItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithSettlementItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the specified Issuing <code>Settlement</code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithSettlementPostRequestBody body,
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
