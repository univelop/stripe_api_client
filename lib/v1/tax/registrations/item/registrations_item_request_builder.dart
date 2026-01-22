// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tax/registration.dart';
import './registrations_get_request_body.dart';
import './registrations_item_request_builder_get_query_parameters.dart';
import './registrations_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax\registrations\{id}
class RegistrationsItemRequestBuilder
    extends BaseRequestBuilder<RegistrationsItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  RegistrationsItemRequestBuilder clone() {
    return RegistrationsItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RegistrationsItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RegistrationsItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/registrations/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [RegistrationsItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RegistrationsItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax/registrations/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a Tax <code>Registration</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Registration?> getAsync(RegistrationsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  RegistrationsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Registration>(
        requestInfo, Registration.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates an existing Tax <code>Registration</code> object.</p><p>A registration cannot be deleted after it has been created. If you wish to end a registration you may do so by setting <code>expires_at</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Registration?> postAsync(RegistrationsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Registration>(
        requestInfo, Registration.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a Tax <code>Registration</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(RegistrationsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  RegistrationsItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<RegistrationsItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => RegistrationsItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates an existing Tax <code>Registration</code> object.</p><p>A registration cannot be deleted after it has been created. If you wish to end a registration you may do so by setting <code>expires_at</code>.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(RegistrationsPostRequestBody body,
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
