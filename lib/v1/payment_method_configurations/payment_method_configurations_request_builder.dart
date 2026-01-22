// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/payment_method_configuration.dart';
import './item/with_configuration_item_request_builder.dart';
import './payment_method_configurations_get_request_body.dart';
import './payment_method_configurations_get_response.dart';
import './payment_method_configurations_post_request_body.dart';
import './payment_method_configurations_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_method_configurations
class PaymentMethodConfigurationsRequestBuilder
    extends BaseRequestBuilder<PaymentMethodConfigurationsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.payment_method_configurations.item collection
  ///  [configuration] Unique identifier of the item
  WithConfigurationItemRequestBuilder byConfiguration(String configuration) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('configuration', () => configuration);
    return WithConfigurationItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PaymentMethodConfigurationsRequestBuilder clone() {
    return PaymentMethodConfigurationsRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [PaymentMethodConfigurationsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentMethodConfigurationsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_method_configurations{?application*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PaymentMethodConfigurationsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PaymentMethodConfigurationsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_method_configurations{?application*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>List payment method configurations</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethodConfigurationsGetResponse?> getAsync(
      PaymentMethodConfigurationsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentMethodConfigurationsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethodConfigurationsGetResponse>(
        requestInfo,
        PaymentMethodConfigurationsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Creates a payment method configuration</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethodConfiguration?> postAsync(
      PaymentMethodConfigurationsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethodConfiguration>(requestInfo,
        PaymentMethodConfiguration.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>List payment method configurations</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      PaymentMethodConfigurationsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PaymentMethodConfigurationsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<PaymentMethodConfigurationsRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () =>
                PaymentMethodConfigurationsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a payment method configuration</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      PaymentMethodConfigurationsPostRequestBody body,
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
