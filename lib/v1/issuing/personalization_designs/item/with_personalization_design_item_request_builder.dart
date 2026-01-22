// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/issuing/personalization_design.dart';
import './with_personalization_design_get_request_body.dart';
import './with_personalization_design_item_request_builder_get_query_parameters.dart';
import './with_personalization_design_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\personalization_designs\{personalization_design}
class WithPersonalizationDesignItemRequestBuilder
    extends BaseRequestBuilder<WithPersonalizationDesignItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithPersonalizationDesignItemRequestBuilder clone() {
    return WithPersonalizationDesignItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithPersonalizationDesignItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPersonalizationDesignItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/personalization_designs/{personalization_design}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithPersonalizationDesignItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithPersonalizationDesignItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/personalization_designs/{personalization_design}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves a personalization design object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PersonalizationDesign?> getAsync(
      WithPersonalizationDesignGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPersonalizationDesignItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PersonalizationDesign>(requestInfo,
        PersonalizationDesign.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Updates a card personalization object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PersonalizationDesign?> postAsync(
      WithPersonalizationDesignPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PersonalizationDesign>(requestInfo,
        PersonalizationDesign.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves a personalization design object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithPersonalizationDesignGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithPersonalizationDesignItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<
            WithPersonalizationDesignItemRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => WithPersonalizationDesignItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Updates a card personalization object.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      WithPersonalizationDesignPostRequestBody body,
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
