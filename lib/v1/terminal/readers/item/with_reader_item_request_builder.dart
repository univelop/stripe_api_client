// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/deleted_terminal/reader.dart';
import '../../../../models/error.dart';
import './cancel_action/cancel_action_request_builder.dart';
import './collect_inputs/collect_inputs_request_builder.dart';
import './collect_payment_method/collect_payment_method_request_builder.dart';
import './confirm_payment_intent/confirm_payment_intent_request_builder.dart';
import './process_payment_intent/process_payment_intent_request_builder.dart';
import './process_setup_intent/process_setup_intent_request_builder.dart';
import './refund_payment/refund_payment_request_builder.dart';
import './set_reader_display/set_reader_display_request_builder.dart';
import './with_reader_delete_request_body.dart';
import './with_reader_get_request_body.dart';
import './with_reader_get_response.dart';
import './with_reader_item_request_builder_get_query_parameters.dart';
import './with_reader_post_request_body.dart';
import './with_reader_post_response.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\terminal\readers\{reader}
class WithReaderItemRequestBuilder
    extends BaseRequestBuilder<WithReaderItemRequestBuilder> {
  ///  The cancel_action property
  CancelActionRequestBuilder get cancelAction {
    return CancelActionRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The collect_inputs property
  CollectInputsRequestBuilder get collectInputs {
    return CollectInputsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The collect_payment_method property
  CollectPaymentMethodRequestBuilder get collectPaymentMethod {
    return CollectPaymentMethodRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The confirm_payment_intent property
  ConfirmPaymentIntentRequestBuilder get confirmPaymentIntent {
    return ConfirmPaymentIntentRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The process_payment_intent property
  ProcessPaymentIntentRequestBuilder get processPaymentIntent {
    return ProcessPaymentIntentRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The process_setup_intent property
  ProcessSetupIntentRequestBuilder get processSetupIntent {
    return ProcessSetupIntentRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The refund_payment property
  RefundPaymentRequestBuilder get refundPayment {
    return RefundPaymentRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The set_reader_display property
  SetReaderDisplayRequestBuilder get setReaderDisplay {
    return SetReaderDisplayRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithReaderItemRequestBuilder clone() {
    return WithReaderItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithReaderItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReaderItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/terminal/readers/{reader}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithReaderItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReaderItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/terminal/readers/{reader}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Deletes a <code>Reader</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Reader?> deleteAsync(WithReaderDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Reader>(
        requestInfo, Reader.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a <code>Reader</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<WithReaderGetResponse?> getAsync(WithReaderGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReaderItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<WithReaderGetResponse>(requestInfo,
        WithReaderGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a <code>Reader</code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<WithReaderPostResponse?> postAsync(WithReaderPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<WithReaderPostResponse>(requestInfo,
        WithReaderPostResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Deletes a <code>Reader</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      WithReaderDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieves a <code>Reader</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithReaderGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReaderItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithReaderItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithReaderItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a <code>Reader</code> object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(WithReaderPostRequestBody body,
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
