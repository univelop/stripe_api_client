// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/terminal/configuration.dart';
import './configurations_get_request_body.dart';
import './configurations_get_response.dart';
import './configurations_post_request_body.dart';
import './configurations_request_builder_get_query_parameters.dart';
import './item/with_configuration_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\terminal\configurations
class ConfigurationsRequestBuilder
    extends BaseRequestBuilder<ConfigurationsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.terminal.configurations.item collection
  ///  [configuration] Unique identifier of the item
  WithConfigurationItemRequestBuilder byConfiguration(String configuration) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('configuration', () => configuration);
    return WithConfigurationItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ConfigurationsRequestBuilder clone() {
    return ConfigurationsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ConfigurationsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfigurationsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/terminal/configurations{?ending_before*,expand*,is_account_default*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ConfigurationsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfigurationsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/terminal/configurations{?ending_before*,expand*,is_account_default*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of <code>Configuration</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ConfigurationsGetResponse?> getAsync(ConfigurationsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ConfigurationsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ConfigurationsGetResponse>(requestInfo,
        ConfigurationsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new <code>Configuration</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Configuration?> postAsync(ConfigurationsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Configuration>(
        requestInfo, Configuration.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of <code>Configuration</code> objects.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ConfigurationsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ConfigurationsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ConfigurationsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ConfigurationsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new <code>Configuration</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      ConfigurationsPostRequestBody body,
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
