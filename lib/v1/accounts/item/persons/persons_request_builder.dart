// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/person.dart';
import './item/with_person_item_request_builder.dart';
import './persons_get_request_body.dart';
import './persons_get_response.dart';
import './persons_post_request_body.dart';
import './persons_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\persons
class PersonsRequestBuilder extends BaseRequestBuilder<PersonsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.accounts.item.persons.item collection
  ///  [person] Unique identifier of the item
  WithPersonItemRequestBuilder byPerson(String person) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('person', () => person);
    return WithPersonItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PersonsRequestBuilder clone() {
    return PersonsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PersonsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PersonsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/persons{?ending_before*,expand*,limit*,relationship*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PersonsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PersonsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/persons{?ending_before*,expand*,limit*,relationship*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of people associated with the account’s legal entity. The people are returned sorted by creation date, with the most recent people appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PersonsGetResponse?> getAsync(PersonsGetRequestBody body,
      [void Function(
              RequestConfiguration<PersonsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PersonsGetResponse>(requestInfo,
        PersonsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new person.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Person?> postAsync(PersonsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Person>(
        requestInfo, Person.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of people associated with the account’s legal entity. The people are returned sorted by creation date, with the most recent people appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(PersonsGetRequestBody body,
      [void Function(
              RequestConfiguration<PersonsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PersonsRequestBuilderGetQueryParameters>(
        requestConfiguration, () => PersonsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new person.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(PersonsPostRequestBody body,
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
