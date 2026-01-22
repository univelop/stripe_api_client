// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tax/settings.dart';
import './settings_get_request_body.dart';
import './settings_post_request_body.dart';
import './settings_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax\settings
class SettingsRequestBuilder
    extends BaseRequestBuilder<SettingsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  SettingsRequestBuilder clone() {
    return SettingsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SettingsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SettingsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/settings{?expand*}",
            pathParameters);

  /// Instantiates a new [SettingsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SettingsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/settings{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves Tax <code>Settings</code> for a merchant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Settings?> getAsync(SettingsGetRequestBody body,
      [void Function(
              RequestConfiguration<SettingsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Settings>(
        requestInfo, Settings.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates Tax <code>Settings</code> parameters used in tax calculations. All parameters are editable but none can be removed once set.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Settings?> postAsync(SettingsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Settings>(
        requestInfo, Settings.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves Tax <code>Settings</code> for a merchant.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(SettingsGetRequestBody body,
      [void Function(
              RequestConfiguration<SettingsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<SettingsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => SettingsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates Tax <code>Settings</code> parameters used in tax calculations. All parameters are editable but none can be removed once set.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SettingsPostRequestBody body,
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
