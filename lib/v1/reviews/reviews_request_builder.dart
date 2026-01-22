// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './item/with_review_item_request_builder.dart';
import './reviews_get_request_body.dart';
import './reviews_get_response.dart';
import './reviews_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\reviews
class ReviewsRequestBuilder extends BaseRequestBuilder<ReviewsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.reviews.item collection
  ///  [review] Unique identifier of the item
  WithReviewItemRequestBuilder byReview(String review) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('review', () => review);
    return WithReviewItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ReviewsRequestBuilder clone() {
    return ReviewsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReviewsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReviewsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/reviews{?created*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ReviewsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReviewsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/reviews{?created*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of <code>Review</code> objects that have <code>open</code> set to <code>true</code>. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReviewsGetResponse?> getAsync(ReviewsGetRequestBody body,
      [void Function(
              RequestConfiguration<ReviewsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReviewsGetResponse>(requestInfo,
        ReviewsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of <code>Review</code> objects that have <code>open</code> set to <code>true</code>. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReviewsGetRequestBody body,
      [void Function(
              RequestConfiguration<ReviewsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReviewsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => ReviewsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
