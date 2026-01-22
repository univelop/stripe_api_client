// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/deleted_test_helpers/test_clock.dart'
    as apisdk_models_deleted_test_helpers_testclock;
import '../../../../models/error.dart';
import '../../../../models/test_helpers/test_clock.dart'
    as apisdk_models_test_helpers_testclock;
import './advance/advance_request_builder.dart';
import './with_test_clock_delete_request_body.dart';
import './with_test_clock_get_request_body.dart';
import './with_test_clock_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\test_clocks\{test_clock}
class WithTestClockItemRequestBuilder
    extends BaseRequestBuilder<WithTestClockItemRequestBuilder> {
  ///  The advance property
  AdvanceRequestBuilder get advance {
    return AdvanceRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithTestClockItemRequestBuilder clone() {
    return WithTestClockItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithTestClockItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTestClockItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/test_clocks/{test_clock}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithTestClockItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithTestClockItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/test_clocks/{test_clock}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Deletes a test clock.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<apisdk_models_deleted_test_helpers_testclock.TestClock?> deleteAsync(
      WithTestClockDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toDeleteRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter
        .send<apisdk_models_deleted_test_helpers_testclock.TestClock>(
            requestInfo,
            apisdk_models_deleted_test_helpers_testclock
                .TestClock.createFromDiscriminatorValue,
            errorMapping);
  }

  /// <p>Retrieves a test clock.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<apisdk_models_test_helpers_testclock.TestClock?> getAsync(
      WithTestClockGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTestClockItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter
        .send<apisdk_models_test_helpers_testclock.TestClock>(
            requestInfo,
            apisdk_models_test_helpers_testclock
                .TestClock.createFromDiscriminatorValue,
            errorMapping);
  }

  /// <p>Deletes a test clock.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toDeleteRequestInformation(
      WithTestClockDeleteRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.delete,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Retrieves a test clock.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithTestClockGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithTestClockItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithTestClockItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithTestClockItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
