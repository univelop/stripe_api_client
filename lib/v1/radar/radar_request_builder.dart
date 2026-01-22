// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './early_fraud_warnings/early_fraud_warnings_request_builder.dart';
import './value_list_items/value_list_items_request_builder.dart';
import './value_lists/value_lists_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\radar
class RadarRequestBuilder extends BaseRequestBuilder<RadarRequestBuilder> {
  ///  The early_fraud_warnings property
  EarlyFraudWarningsRequestBuilder get earlyFraudWarnings {
    return EarlyFraudWarningsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The value_list_items property
  ValueListItemsRequestBuilder get valueListItems {
    return ValueListItemsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The value_lists property
  ValueListsRequestBuilder get valueLists {
    return ValueListsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  RadarRequestBuilder clone() {
    return RadarRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RadarRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RadarRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/radar", pathParameters);

  /// Instantiates a new [RadarRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RadarRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/radar",
            {RequestInformation.rawUrlKey: rawUrl});
}
