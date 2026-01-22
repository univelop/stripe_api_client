// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/billing_portal/configuration.dart';
import '../../../../models/error.dart';
import './with_configuration_get_request_body.dart';
import './with_configuration_item_request_builder_get_query_parameters.dart';
import './with_configuration_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing_portal\configurations\{configuration}
class WithConfigurationItemRequestBuilder
    extends BaseRequestBuilder<WithConfigurationItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithConfigurationItemRequestBuilder clone() {
    return WithConfigurationItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithConfigurationItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithConfigurationItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing_portal/configurations/{configuration}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithConfigurationItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithConfigurationItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/billing_portal/configurations/{configuration}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a configuration that describes the functionality of the customer portal.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Configuration?> getAsync(WithConfigurationGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithConfigurationItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Configuration>(
        requestInfo, Configuration.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a configuration that describes the functionality of the customer portal.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Configuration?> postAsync(WithConfigurationPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Configuration>(
        requestInfo, Configuration.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a configuration that describes the functionality of the customer portal.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithConfigurationGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithConfigurationItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithConfigurationItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithConfigurationItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a configuration that describes the functionality of the customer portal.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithConfigurationPostRequestBody body,
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
