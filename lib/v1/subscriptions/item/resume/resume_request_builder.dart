// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/subscription.dart';
import './resume_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\subscriptions\{subscription_exposed_-id}\resume
class ResumeRequestBuilder extends BaseRequestBuilder<ResumeRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ResumeRequestBuilder clone() {
    return ResumeRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ResumeRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ResumeRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscriptions/{subscription_exposed_%2Did}/resume",
            pathParameters);

  /// Instantiates a new [ResumeRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ResumeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscriptions/{subscription_exposed_%2Did}/resume",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Initiates resumption of a paused subscription, optionally resetting the billing cycle anchor and creating prorations. If a resumption invoice is generated, it must be paid or marked uncollectible before the subscription will be unpaused. If payment succeeds the subscription will become <code>active</code>, and if payment fails the subscription will be <code>past_due</code>. The resumption invoice will void automatically if not paid by the expiration date.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Subscription?> postAsync(ResumePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Subscription>(
        requestInfo, Subscription.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Initiates resumption of a paused subscription, optionally resetting the billing cycle anchor and creating prorations. If a resumption invoice is generated, it must be paid or marked uncollectible before the subscription will be unpaused. If payment succeeds the subscription will become <code>active</code>, and if payment fails the subscription will be <code>past_due</code>. The resumption invoice will void automatically if not paid by the expiration date.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ResumePostRequestBody body,
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
