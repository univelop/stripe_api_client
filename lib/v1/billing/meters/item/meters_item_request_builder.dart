// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/billing/meter.dart';
import '../../../../models/error.dart';
import './deactivate/deactivate_request_builder.dart';
import './event_summaries/event_summaries_request_builder.dart';
import './meters_get_request_body.dart';
import './meters_item_request_builder_get_query_parameters.dart';
import './meters_post_request_body.dart';
import './reactivate/reactivate_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing\meters\{id}
class MetersItemRequestBuilder
    extends BaseRequestBuilder<MetersItemRequestBuilder> {
  ///  The deactivate property
  DeactivateRequestBuilder get deactivate {
    return DeactivateRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The event_summaries property
  EventSummariesRequestBuilder get eventSummaries {
    return EventSummariesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The reactivate property
  ReactivateRequestBuilder get reactivate {
    return ReactivateRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  MetersItemRequestBuilder clone() {
    return MetersItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [MetersItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MetersItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/meters/{id}{?expand*}",
            pathParameters);

  /// Instantiates a new [MetersItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MetersItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing/meters/{id}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a billing meter given an ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Meter?> getAsync(MetersGetRequestBody body,
      [void Function(
              RequestConfiguration<MetersItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Meter>(
        requestInfo, Meter.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a billing meter.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Meter?> postAsync(MetersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Meter>(
        requestInfo, Meter.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a billing meter given an ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(MetersGetRequestBody body,
      [void Function(
              RequestConfiguration<MetersItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<MetersItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => MetersItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a billing meter.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(MetersPostRequestBody body,
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
