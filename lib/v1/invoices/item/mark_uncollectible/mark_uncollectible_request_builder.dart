// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/invoice.dart';
import './mark_uncollectible_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\invoices\{invoice}\mark_uncollectible
class MarkUncollectibleRequestBuilder
    extends BaseRequestBuilder<MarkUncollectibleRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  MarkUncollectibleRequestBuilder clone() {
    return MarkUncollectibleRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [MarkUncollectibleRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MarkUncollectibleRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoices/{invoice}/mark_uncollectible",
            pathParameters);

  /// Instantiates a new [MarkUncollectibleRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  MarkUncollectibleRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/invoices/{invoice}/mark_uncollectible",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Invoice?> postAsync(MarkUncollectiblePostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Invoice>(
        requestInfo, Invoice.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      MarkUncollectiblePostRequestBody body,
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
