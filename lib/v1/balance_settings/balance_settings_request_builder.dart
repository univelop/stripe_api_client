// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/balance_settings.dart';
import '../../models/error.dart';
import './balance_settings_get_request_body.dart';
import './balance_settings_post_request_body.dart';
import './balance_settings_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\balance_settings
class BalanceSettingsRequestBuilder
    extends BaseRequestBuilder<BalanceSettingsRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  BalanceSettingsRequestBuilder clone() {
    return BalanceSettingsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [BalanceSettingsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BalanceSettingsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/balance_settings{?expand*}",
            pathParameters);

  /// Instantiates a new [BalanceSettingsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BalanceSettingsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/balance_settings{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves balance settings for a given connected account. Related guide: <a href="/connect/authentication">Making API calls for connected accounts</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<BalanceSettings?> getAsync(BalanceSettingsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  BalanceSettingsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<BalanceSettings>(requestInfo,
        BalanceSettings.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates balance settings for a given connected account. Related guide: <a href="/connect/authentication">Making API calls for connected accounts</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<BalanceSettings?> postAsync(BalanceSettingsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<BalanceSettings>(requestInfo,
        BalanceSettings.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves balance settings for a given connected account. Related guide: <a href="/connect/authentication">Making API calls for connected accounts</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(BalanceSettingsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  BalanceSettingsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<BalanceSettingsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => BalanceSettingsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates balance settings for a given connected account. Related guide: <a href="/connect/authentication">Making API calls for connected accounts</a></p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      BalanceSettingsPostRequestBody body,
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
