// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './associations/associations_request_builder.dart';
import './calculations/calculations_request_builder.dart';
import './registrations/registrations_request_builder.dart';
import './settings/settings_request_builder.dart';
import './transactions/transactions_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\tax
class TaxRequestBuilder extends BaseRequestBuilder<TaxRequestBuilder> {
  ///  The associations property
  AssociationsRequestBuilder get associations {
    return AssociationsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The calculations property
  CalculationsRequestBuilder get calculations {
    return CalculationsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The registrations property
  RegistrationsRequestBuilder get registrations {
    return RegistrationsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The settings property
  SettingsRequestBuilder get settings {
    return SettingsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The transactions property
  TransactionsRequestBuilder get transactions {
    return TransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  TaxRequestBuilder clone() {
    return TaxRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [TaxRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax", pathParameters);

  /// Instantiates a new [TaxRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  TaxRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/tax",
            {RequestInformation.rawUrlKey: rawUrl});
}
