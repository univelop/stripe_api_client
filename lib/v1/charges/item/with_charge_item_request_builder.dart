// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/charge.dart';
import '../../../models/error.dart';
import './capture/capture_request_builder.dart';
import './dispute/dispute_request_builder.dart';
import './refund/refund_request_builder.dart';
import './refunds/refunds_request_builder.dart';
import './with_charge_get_request_body.dart';
import './with_charge_item_request_builder_get_query_parameters.dart';
import './with_charge_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\charges\{charge}
class WithChargeItemRequestBuilder
    extends BaseRequestBuilder<WithChargeItemRequestBuilder> {
  ///  The capture property
  CaptureRequestBuilder get capture {
    return CaptureRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The dispute property
  DisputeRequestBuilder get dispute {
    return DisputeRequestBuilder(pathParameters, requestAdapter);
  }

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
  WithChargeItemRequestBuilder clone() {
    return WithChargeItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithChargeItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithChargeItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/charges/{charge}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithChargeItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithChargeItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/charges/{charge}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of a charge that has previously been created. Supply the unique charge ID that was returned from your previous request, and Stripe will return the corresponding charge information. The same information is returned when creating or refunding the charge.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Charge?> getAsync(WithChargeGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithChargeItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Charge>(
        requestInfo, Charge.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Charge?> postAsync(WithChargePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Charge>(
        requestInfo, Charge.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of a charge that has previously been created. Supply the unique charge ID that was returned from your previous request, and Stripe will return the corresponding charge information. The same information is returned when creating or refunding the charge.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithChargeGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithChargeItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithChargeItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithChargeItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithChargePostRequestBody body,
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
