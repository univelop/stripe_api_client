// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/review.dart';
import './approve/approve_request_builder.dart';
import './with_review_get_request_body.dart';
import './with_review_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\reviews\{review}
class WithReviewItemRequestBuilder
    extends BaseRequestBuilder<WithReviewItemRequestBuilder> {
  ///  The approve property
  ApproveRequestBuilder get approve {
    return ApproveRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  WithReviewItemRequestBuilder clone() {
    return WithReviewItemRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithReviewItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReviewItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/reviews/{review}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithReviewItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithReviewItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/reviews/{review}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a <code>Review</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Review?> getAsync(WithReviewGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReviewItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Review>(
        requestInfo, Review.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a <code>Review</code> object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(WithReviewGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithReviewItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<WithReviewItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithReviewItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
