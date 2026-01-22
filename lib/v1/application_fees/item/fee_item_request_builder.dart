// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/application_fee.dart';
import '../../../models/error.dart';
import './fee_get_request_body.dart';
import './fee_item_request_builder_get_query_parameters.dart';
import './refund/refund_request_builder.dart';
import './refunds/refunds_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\application_fees\{fee-id}
class FeeItemRequestBuilder extends BaseRequestBuilder<FeeItemRequestBuilder> {
  ///  The refund property
  RefundRequestBuilder get refund {
    return RefundRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The refunds property
  RefundsRequestBuilder get refunds {
    return RefundsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  FeeItemRequestBuilder clone() {
    return FeeItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [FeeItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FeeItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/application_fees/{fee%2Did}{?expand*}",
            pathParameters);

  /// Instantiates a new [FeeItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  FeeItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/application_fees/{fee%2Did}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an application fee that your account has collected. The same information is returned when refunding the application fee.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ApplicationFee?> getAsync(FeeGetRequestBody body,
      [void Function(
              RequestConfiguration<FeeItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ApplicationFee>(
        requestInfo, ApplicationFee.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an application fee that your account has collected. The same information is returned when refunding the application fee.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(FeeGetRequestBody body,
      [void Function(
              RequestConfiguration<FeeItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<FeeItemRequestBuilderGetQueryParameters>(
        requestConfiguration, () => FeeItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
