// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations/authorizations_request_builder.dart';
import './cards/cards_request_builder.dart';
import './personalization_designs/personalization_designs_request_builder.dart';
import './settlements/settlements_request_builder.dart';
import './transactions/transactions_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing
class IssuingRequestBuilder extends BaseRequestBuilder<IssuingRequestBuilder> {
  ///  The authorizations property
  AuthorizationsRequestBuilder get authorizations {
    return AuthorizationsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The cards property
  CardsRequestBuilder get cards {
    return CardsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The personalization_designs property
  PersonalizationDesignsRequestBuilder get personalizationDesigns {
    return PersonalizationDesignsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The settlements property
  SettlementsRequestBuilder get settlements {
    return SettlementsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The transactions property
  TransactionsRequestBuilder get transactions {
    return TransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  IssuingRequestBuilder clone() {
    return IssuingRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [IssuingRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  IssuingRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/issuing",
            pathParameters);

  /// Instantiates a new [IssuingRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  IssuingRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/issuing",
            {RequestInformation.rawUrlKey: rawUrl});
}
