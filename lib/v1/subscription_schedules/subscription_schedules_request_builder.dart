// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/subscription_schedule.dart';
import './item/with_schedule_item_request_builder.dart';
import './subscription_schedules_get_request_body.dart';
import './subscription_schedules_get_response.dart';
import './subscription_schedules_post_request_body.dart';
import './subscription_schedules_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\subscription_schedules
class SubscriptionSchedulesRequestBuilder
    extends BaseRequestBuilder<SubscriptionSchedulesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.subscription_schedules.item collection
  ///  [schedule] Unique identifier of the item
  WithScheduleItemRequestBuilder bySchedule(String schedule) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('schedule', () => schedule);
    return WithScheduleItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SubscriptionSchedulesRequestBuilder clone() {
    return SubscriptionSchedulesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SubscriptionSchedulesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionSchedulesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscription_schedules{?canceled_at*,completed_at*,created*,customer*,customer_account*,ending_before*,expand*,limit*,released_at*,scheduled*,starting_after*}",
            pathParameters);

  /// Instantiates a new [SubscriptionSchedulesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SubscriptionSchedulesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/subscription_schedules{?canceled_at*,completed_at*,created*,customer*,customer_account*,ending_before*,expand*,limit*,released_at*,scheduled*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the list of your subscription schedules.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SubscriptionSchedulesGetResponse?> getAsync(
      SubscriptionSchedulesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SubscriptionSchedulesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SubscriptionSchedulesGetResponse>(
        requestInfo,
        SubscriptionSchedulesGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Creates a new subscription schedule object. Each customer can have up to 500 active or scheduled subscriptions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SubscriptionSchedule?> postAsync(
      SubscriptionSchedulesPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SubscriptionSchedule>(requestInfo,
        SubscriptionSchedule.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the list of your subscription schedules.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      SubscriptionSchedulesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  SubscriptionSchedulesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<SubscriptionSchedulesRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => SubscriptionSchedulesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new subscription schedule object. Each customer can have up to 500 active or scheduled subscriptions.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      SubscriptionSchedulesPostRequestBody body,
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
