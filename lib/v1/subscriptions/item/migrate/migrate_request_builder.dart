// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/subscription.dart';
import './migrate_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\subscriptions\{subscription_exposed_-id}\migrate
class MigrateRequestBuilder extends BaseRequestBuilder<MigrateRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  MigrateRequestBuilder clone() {
    return MigrateRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [MigrateRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MigrateRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscriptions/{subscription_exposed_%2Did}/migrate",
            pathParameters);

  /// Instantiates a new [MigrateRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MigrateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscriptions/{subscription_exposed_%2Did}/migrate",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Upgrade the billing_mode of an existing subscription.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Subscription?> postAsync(MigratePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Subscription>(
        requestInfo, Subscription.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Upgrade the billing_mode of an existing subscription.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(MigratePostRequestBody body,
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
