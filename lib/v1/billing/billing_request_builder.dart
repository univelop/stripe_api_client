// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './alerts/alerts_request_builder.dart';
import './credit_balance_summary/credit_balance_summary_request_builder.dart';
import './credit_balance_transactions/credit_balance_transactions_request_builder.dart';
import './credit_grants/credit_grants_request_builder.dart';
import './meter_event_adjustments/meter_event_adjustments_request_builder.dart';
import './meter_events/meter_events_request_builder.dart';
import './meters/meters_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\billing
class BillingRequestBuilder extends BaseRequestBuilder<BillingRequestBuilder> {
  ///  The alerts property
  AlertsRequestBuilder get alerts {
    return AlertsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The credit_balance_summary property
  CreditBalanceSummaryRequestBuilder get creditBalanceSummary {
    return CreditBalanceSummaryRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The credit_balance_transactions property
  CreditBalanceTransactionsRequestBuilder get creditBalanceTransactions {
    return CreditBalanceTransactionsRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The credit_grants property
  CreditGrantsRequestBuilder get creditGrants {
    return CreditGrantsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The meter_event_adjustments property
  MeterEventAdjustmentsRequestBuilder get meterEventAdjustments {
    return MeterEventAdjustmentsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The meter_events property
  MeterEventsRequestBuilder get meterEvents {
    return MeterEventsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The meters property
  MetersRequestBuilder get meters {
    return MetersRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  BillingRequestBuilder clone() {
    return BillingRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [BillingRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BillingRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing", pathParameters);

  /// Instantiates a new [BillingRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  BillingRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/billing",
            {RequestInformation.rawUrlKey: rawUrl});
}
