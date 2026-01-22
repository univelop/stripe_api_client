// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/fabric_service.dart';
import './integration_config_get_request_body.dart';
import './integration_config_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\fabric\service\integration_config
class IntegrationConfigRequestBuilder
    extends BaseRequestBuilder<IntegrationConfigRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  IntegrationConfigRequestBuilder clone() {
    return IntegrationConfigRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [IntegrationConfigRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  IntegrationConfigRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/fabric/service/integration_config?service_name={service_name}{&expand*}",
            pathParameters);

  /// Instantiates a new [IntegrationConfigRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  IntegrationConfigRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/fabric/service/integration_config?service_name={service_name}{&expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<FabricService?> getAsync(IntegrationConfigGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  IntegrationConfigRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<FabricService>(
        requestInfo, FabricService.createFromDiscriminatorValue, errorMapping);
  }

  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      IntegrationConfigGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  IntegrationConfigRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<IntegrationConfigRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => IntegrationConfigRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
