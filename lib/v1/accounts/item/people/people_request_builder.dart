// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/person.dart';
import './item/with_person_item_request_builder.dart';
import './people_get_request_body.dart';
import './people_get_response.dart';
import './people_post_request_body.dart';
import './people_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\accounts\{account}\people
class PeopleRequestBuilder extends BaseRequestBuilder<PeopleRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.accounts.item.people.item collection
  ///  [person] Unique identifier of the item
  WithPersonItemRequestBuilder byPerson(String person) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('person', () => person);
    return WithPersonItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  PeopleRequestBuilder clone() {
    return PeopleRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PeopleRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PeopleRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/people{?ending_before*,expand*,limit*,relationship*,starting_after*}",
            pathParameters);

  /// Instantiates a new [PeopleRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PeopleRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/accounts/{account}/people{?ending_before*,expand*,limit*,relationship*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of people associated with the account’s legal entity. The people are returned sorted by creation date, with the most recent people appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PeopleGetResponse?> getAsync(PeopleGetRequestBody body,
      [void Function(
              RequestConfiguration<PeopleRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PeopleGetResponse>(requestInfo,
        PeopleGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Creates a new person.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Person?> postAsync(PeoplePostRequestBody body,
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
  RequestInformation toGetRequestInformation(PeopleGetRequestBody body,
      [void Function(
              RequestConfiguration<PeopleRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<PeopleRequestBuilderGetQueryParameters>(
        requestConfiguration, () => PeopleRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }

  /// <p>Creates a new person.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(PeoplePostRequestBody body,
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
