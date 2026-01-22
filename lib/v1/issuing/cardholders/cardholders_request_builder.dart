// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/issuing/cardholder.dart';
import './cardholders_get_request_body.dart';
import './cardholders_get_response.dart';
import './cardholders_post_request_body.dart';
import './cardholders_request_builder_get_query_parameters.dart';
import './item/with_cardholder_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\issuing\cardholders
class CardholdersRequestBuilder
    extends BaseRequestBuilder<CardholdersRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.issuing.cardholders.item collection
  ///  [cardholder] Unique identifier of the item
  WithCardholderItemRequestBuilder byCardholder(String cardholder) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('cardholder', () => cardholder);
    return WithCardholderItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  CardholdersRequestBuilder clone() {
    return CardholdersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [CardholdersRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CardholdersRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/cardholders{?created*,email*,ending_before*,expand*,limit*,phone_number*,starting_after*,status*,type*}",
            pathParameters);

  /// Instantiates a new [CardholdersRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  CardholdersRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/issuing/cardholders{?created*,email*,ending_before*,expand*,limit*,phone_number*,starting_after*,status*,type*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of Issuing <code>Cardholder</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<CardholdersGetResponse?> getAsync(CardholdersGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CardholdersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<CardholdersGetResponse>(requestInfo,
        CardholdersGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new Issuing <code>Cardholder</code> object that can be issued cards.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Cardholder?> postAsync(CardholdersPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Cardholder>(
        requestInfo, Cardholder.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of Issuing <code>Cardholder</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(CardholdersGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  CardholdersRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<CardholdersRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => CardholdersRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new Issuing <code>Cardholder</code> object that can be issued cards.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(CardholdersPostRequestBody body,
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
