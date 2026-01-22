// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account/account_request_builder.dart';
import './account_links/account_links_request_builder.dart';
import './account_sessions/account_sessions_request_builder.dart';
import './accounts/accounts_request_builder.dart';
import './apple_pay/apple_pay_request_builder.dart';
import './application_fees/application_fees_request_builder.dart';
import './apps/apps_request_builder.dart';
import './balance/balance_request_builder.dart';
import './balance_settings/balance_settings_request_builder.dart';
import './balance_transactions/balance_transactions_request_builder.dart';
import './billing/billing_request_builder.dart';
import './billing_portal/billing_portal_request_builder.dart';
import './charges/charges_request_builder.dart';
import './checkout/checkout_request_builder.dart';
import './climate/climate_request_builder.dart';
import './confirmation_tokens/confirmation_tokens_request_builder.dart';
import './country_specs/country_specs_request_builder.dart';
import './coupons/coupons_request_builder.dart';
import './credit_notes/credit_notes_request_builder.dart';
import './customer_sessions/customer_sessions_request_builder.dart';
import './customers/customers_request_builder.dart';
import './disputes/disputes_request_builder.dart';
import './entitlements/entitlements_request_builder.dart';
import './ephemeral_keys/ephemeral_keys_request_builder.dart';
import './events/events_request_builder.dart';
import './exchange_rates/exchange_rates_request_builder.dart';
import './external_accounts/external_accounts_request_builder.dart';
import './fabric/fabric_request_builder.dart';
import './file_links/file_links_request_builder.dart';
import './files/files_request_builder.dart';
import './financial_connections/financial_connections_request_builder.dart';
import './forwarding/forwarding_request_builder.dart';
import './identity/identity_request_builder.dart';
import './invoice_payments/invoice_payments_request_builder.dart';
import './invoice_rendering_templates/invoice_rendering_templates_request_builder.dart';
import './invoiceitems/invoiceitems_request_builder.dart';
import './invoices/invoices_request_builder.dart';
import './issuing/issuing_request_builder.dart';
import './link_account_sessions/link_account_sessions_request_builder.dart';
import './linked_accounts/linked_accounts_request_builder.dart';
import './mandates/mandates_request_builder.dart';
import './payment_attempt_records/payment_attempt_records_request_builder.dart';
import './payment_intents/payment_intents_request_builder.dart';
import './payment_links/payment_links_request_builder.dart';
import './payment_method_configurations/payment_method_configurations_request_builder.dart';
import './payment_method_domains/payment_method_domains_request_builder.dart';
import './payment_methods/payment_methods_request_builder.dart';
import './payment_records/payment_records_request_builder.dart';
import './payouts/payouts_request_builder.dart';
import './plans/plans_request_builder.dart';
import './prices/prices_request_builder.dart';
import './products/products_request_builder.dart';
import './promotion_codes/promotion_codes_request_builder.dart';
import './quotes/quotes_request_builder.dart';
import './radar/radar_request_builder.dart';
import './refunds/refunds_request_builder.dart';
import './reporting/reporting_request_builder.dart';
import './reviews/reviews_request_builder.dart';
import './setup_attempts/setup_attempts_request_builder.dart';
import './setup_intents/setup_intents_request_builder.dart';
import './shipping_rates/shipping_rates_request_builder.dart';
import './sigma/sigma_request_builder.dart';
import './sources/sources_request_builder.dart';
import './subscription_items/subscription_items_request_builder.dart';
import './subscription_schedules/subscription_schedules_request_builder.dart';
import './subscriptions/subscriptions_request_builder.dart';
import './tax/tax_request_builder.dart';
import './tax_codes/tax_codes_request_builder.dart';
import './tax_ids/tax_ids_request_builder.dart';
import './tax_rates/tax_rates_request_builder.dart';
import './terminal/terminal_request_builder.dart';
import './test_helpers/test_helpers_request_builder.dart';
import './tokens/tokens_request_builder.dart';
import './topups/topups_request_builder.dart';
import './transfers/transfers_request_builder.dart';
import './treasury/treasury_request_builder.dart';
import './webhook_endpoints/webhook_endpoints_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1
class V1RequestBuilder extends BaseRequestBuilder<V1RequestBuilder> {
  ///  The account property
  AccountRequestBuilder get account {
    return AccountRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The account_links property
  AccountLinksRequestBuilder get accountLinks {
    return AccountLinksRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The accounts property
  AccountsRequestBuilder get accounts {
    return AccountsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The account_sessions property
  AccountSessionsRequestBuilder get accountSessions {
    return AccountSessionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The apple_pay property
  ApplePayRequestBuilder get applePay {
    return ApplePayRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The application_fees property
  ApplicationFeesRequestBuilder get applicationFees {
    return ApplicationFeesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The apps property
  AppsRequestBuilder get apps {
    return AppsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The balance property
  BalanceRequestBuilder get balance {
    return BalanceRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The balance_settings property
  BalanceSettingsRequestBuilder get balanceSettings {
    return BalanceSettingsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The balance_transactions property
  BalanceTransactionsRequestBuilder get balanceTransactions {
    return BalanceTransactionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The billing property
  BillingRequestBuilder get billing {
    return BillingRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The billing_portal property
  BillingPortalRequestBuilder get billingPortal {
    return BillingPortalRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The charges property
  ChargesRequestBuilder get charges {
    return ChargesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The checkout property
  CheckoutRequestBuilder get checkout {
    return CheckoutRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The climate property
  ClimateRequestBuilder get climate {
    return ClimateRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The confirmation_tokens property
  ConfirmationTokensRequestBuilder get confirmationTokens {
    return ConfirmationTokensRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The country_specs property
  CountrySpecsRequestBuilder get countrySpecs {
    return CountrySpecsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The coupons property
  CouponsRequestBuilder get coupons {
    return CouponsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The credit_notes property
  CreditNotesRequestBuilder get creditNotes {
    return CreditNotesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The customers property
  CustomersRequestBuilder get customers {
    return CustomersRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The customer_sessions property
  CustomerSessionsRequestBuilder get customerSessions {
    return CustomerSessionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The disputes property
  DisputesRequestBuilder get disputes {
    return DisputesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The entitlements property
  EntitlementsRequestBuilder get entitlements {
    return EntitlementsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The ephemeral_keys property
  EphemeralKeysRequestBuilder get ephemeralKeys {
    return EphemeralKeysRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The events property
  EventsRequestBuilder get events {
    return EventsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The exchange_rates property
  ExchangeRatesRequestBuilder get exchangeRates {
    return ExchangeRatesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The external_accounts property
  ExternalAccountsRequestBuilder get externalAccounts {
    return ExternalAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The fabric property
  FabricRequestBuilder get fabric {
    return FabricRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The file_links property
  FileLinksRequestBuilder get fileLinks {
    return FileLinksRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The files property
  FilesRequestBuilder get files {
    return FilesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The financial_connections property
  FinancialConnectionsRequestBuilder get financialConnections {
    return FinancialConnectionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The forwarding property
  ForwardingRequestBuilder get forwarding {
    return ForwardingRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The identity property
  IdentityRequestBuilder get identity {
    return IdentityRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The invoiceitems property
  InvoiceitemsRequestBuilder get invoiceitems {
    return InvoiceitemsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The invoice_payments property
  InvoicePaymentsRequestBuilder get invoicePayments {
    return InvoicePaymentsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The invoice_rendering_templates property
  InvoiceRenderingTemplatesRequestBuilder get invoiceRenderingTemplates {
    return InvoiceRenderingTemplatesRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The invoices property
  InvoicesRequestBuilder get invoices {
    return InvoicesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The issuing property
  IssuingRequestBuilder get issuing {
    return IssuingRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The link_account_sessions property
  LinkAccountSessionsRequestBuilder get linkAccountSessions {
    return LinkAccountSessionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The linked_accounts property
  LinkedAccountsRequestBuilder get linkedAccounts {
    return LinkedAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The mandates property
  MandatesRequestBuilder get mandates {
    return MandatesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The payment_attempt_records property
  PaymentAttemptRecordsRequestBuilder get paymentAttemptRecords {
    return PaymentAttemptRecordsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The payment_intents property
  PaymentIntentsRequestBuilder get paymentIntents {
    return PaymentIntentsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The payment_links property
  PaymentLinksRequestBuilder get paymentLinks {
    return PaymentLinksRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The payment_method_configurations property
  PaymentMethodConfigurationsRequestBuilder get paymentMethodConfigurations {
    return PaymentMethodConfigurationsRequestBuilder(
        pathParameters, requestAdapter);
  }

  ///  The payment_method_domains property
  PaymentMethodDomainsRequestBuilder get paymentMethodDomains {
    return PaymentMethodDomainsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The payment_methods property
  PaymentMethodsRequestBuilder get paymentMethods {
    return PaymentMethodsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The payment_records property
  PaymentRecordsRequestBuilder get paymentRecords {
    return PaymentRecordsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The payouts property
  PayoutsRequestBuilder get payouts {
    return PayoutsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The plans property
  PlansRequestBuilder get plans {
    return PlansRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The prices property
  PricesRequestBuilder get prices {
    return PricesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The products property
  ProductsRequestBuilder get products {
    return ProductsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The promotion_codes property
  PromotionCodesRequestBuilder get promotionCodes {
    return PromotionCodesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The quotes property
  QuotesRequestBuilder get quotes {
    return QuotesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The radar property
  RadarRequestBuilder get radar {
    return RadarRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The refunds property
  RefundsRequestBuilder get refunds {
    return RefundsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The reporting property
  ReportingRequestBuilder get reporting {
    return ReportingRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The reviews property
  ReviewsRequestBuilder get reviews {
    return ReviewsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The setup_attempts property
  SetupAttemptsRequestBuilder get setupAttempts {
    return SetupAttemptsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The setup_intents property
  SetupIntentsRequestBuilder get setupIntents {
    return SetupIntentsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The shipping_rates property
  ShippingRatesRequestBuilder get shippingRates {
    return ShippingRatesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The sigma property
  SigmaRequestBuilder get sigma {
    return SigmaRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The sources property
  SourcesRequestBuilder get sources {
    return SourcesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The subscription_items property
  SubscriptionItemsRequestBuilder get subscriptionItems {
    return SubscriptionItemsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The subscriptions property
  SubscriptionsRequestBuilder get subscriptions {
    return SubscriptionsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The subscription_schedules property
  SubscriptionSchedulesRequestBuilder get subscriptionSchedules {
    return SubscriptionSchedulesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The tax property
  TaxRequestBuilder get tax {
    return TaxRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The tax_codes property
  TaxCodesRequestBuilder get taxCodes {
    return TaxCodesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The tax_ids property
  TaxIdsRequestBuilder get taxIds {
    return TaxIdsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The tax_rates property
  TaxRatesRequestBuilder get taxRates {
    return TaxRatesRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The terminal property
  TerminalRequestBuilder get terminal {
    return TerminalRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The test_helpers property
  TestHelpersRequestBuilder get testHelpers {
    return TestHelpersRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The tokens property
  TokensRequestBuilder get tokens {
    return TokensRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The topups property
  TopupsRequestBuilder get topups {
    return TopupsRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The transfers property
  TransfersRequestBuilder get transfers {
    return TransfersRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The treasury property
  TreasuryRequestBuilder get treasury {
    return TreasuryRequestBuilder(pathParameters, requestAdapter);
  }

  ///  The webhook_endpoints property
  WebhookEndpointsRequestBuilder get webhookEndpoints {
    return WebhookEndpointsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  V1RequestBuilder clone() {
    return V1RequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [V1RequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  V1RequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1", pathParameters);

  /// Instantiates a new [V1RequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  V1RequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1",
            {RequestInformation.rawUrlKey: rawUrl});
}
