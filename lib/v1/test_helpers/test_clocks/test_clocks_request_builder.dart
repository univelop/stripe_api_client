// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/test_helpers/test_clock.dart';
import './item/with_test_clock_item_request_builder.dart';
import './test_clocks_get_request_body.dart';
import './test_clocks_get_response.dart';
import './test_clocks_post_request_body.dart';
import './test_clocks_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\test_clocks
class TestClocksRequestBuilder
    extends BaseRequestBuilder<TestClocksRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.test_clocks.item collection
  ///  [testClock] Unique identifier of the item
  WithTestClockItemRequestBuilder byTestClock(String testClock) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('test_clock', () => testClock);
    return WithTestClockItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TestClocksRequestBuilder clone() {
    return TestClocksRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TestClocksRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TestClocksRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/test_clocks{?ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [TestClocksRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TestClocksRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/test_clocks{?ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your test clocks.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TestClocksGetResponse?> getAsync(TestClocksGetRequestBody body,
      [void Function(
              RequestConfiguration<TestClocksRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TestClocksGetResponse>(requestInfo,
        TestClocksGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new test clock that can be attached to new customers and quotes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<TestClock?> postAsync(TestClocksPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<TestClock>(
        requestInfo, TestClock.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your test clocks.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(TestClocksGetRequestBody body,
      [void Function(
              RequestConfiguration<TestClocksRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<TestClocksRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => TestClocksRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new test clock that can be attached to new customers and quotes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(TestClocksPostRequestBody body,
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
