// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/issuing/personalization_design.dart';
import './item/with_personalization_design_item_request_builder.dart';
import './personalization_designs_get_request_body.dart';
import './personalization_designs_get_response.dart';
import './personalization_designs_post_request_body.dart';
import './personalization_designs_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\personalization_designs
class PersonalizationDesignsRequestBuilder
    extends BaseRequestBuilder<PersonalizationDesignsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.issuing.personalization_designs.item collection
  ///  [personalizationDesign] Unique identifier of the item
  WithPersonalizationDesignItemRequestBuilder byPersonalizationDesign(
      String personalizationDesign) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent(
        'personalization_design', () => personalizationDesign);
    return WithPersonalizationDesignItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PersonalizationDesignsRequestBuilder clone() {
    return PersonalizationDesignsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PersonalizationDesignsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PersonalizationDesignsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/personalization_designs{?ending_before*,expand*,limit*,lookup_keys*,preferences*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [PersonalizationDesignsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PersonalizationDesignsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/personalization_designs{?ending_before*,expand*,limit*,lookup_keys*,preferences*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of personalization design objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PersonalizationDesignsGetResponse?> getAsync(
      PersonalizationDesignsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PersonalizationDesignsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PersonalizationDesignsGetResponse>(
        requestInfo,
        PersonalizationDesignsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Creates a personalization design object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PersonalizationDesign?> postAsync(
      PersonalizationDesignsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PersonalizationDesign>(requestInfo,
        PersonalizationDesign.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of personalization design objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      PersonalizationDesignsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  PersonalizationDesignsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<PersonalizationDesignsRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => PersonalizationDesignsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a personalization design object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      PersonalizationDesignsPostRequestBody body,
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
