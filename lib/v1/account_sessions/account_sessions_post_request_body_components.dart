// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_sessions_post_request_body_components_account_management.dart';
import './account_sessions_post_request_body_components_account_onboarding.dart';
import './account_sessions_post_request_body_components_balances.dart';
import './account_sessions_post_request_body_components_disputes_list.dart';
import './account_sessions_post_request_body_components_documents.dart';
import './account_sessions_post_request_body_components_financial_account.dart';
import './account_sessions_post_request_body_components_financial_account_transactions.dart';
import './account_sessions_post_request_body_components_instant_payouts_promotion.dart';
import './account_sessions_post_request_body_components_issuing_card.dart';
import './account_sessions_post_request_body_components_issuing_cards_list.dart';
import './account_sessions_post_request_body_components_notification_banner.dart';
import './account_sessions_post_request_body_components_payment_details.dart';
import './account_sessions_post_request_body_components_payment_disputes.dart';
import './account_sessions_post_request_body_components_payments.dart';
import './account_sessions_post_request_body_components_payout_details.dart';
import './account_sessions_post_request_body_components_payouts.dart';
import './account_sessions_post_request_body_components_payouts_list.dart';
import './account_sessions_post_request_body_components_tax_registrations.dart';
import './account_sessions_post_request_body_components_tax_settings.dart';

/// auto generated
/// Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
class AccountSessionsPostRequestBodyComponents
    implements AdditionalDataHolder, Parsable {
  ///  The account_management property
  AccountSessionsPostRequestBodyComponentsAccountManagement? accountManagement;

  ///  The account_onboarding property
  AccountSessionsPostRequestBodyComponentsAccountOnboarding? accountOnboarding;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The balances property
  AccountSessionsPostRequestBodyComponentsBalances? balances;

  ///  The disputes_list property
  AccountSessionsPostRequestBodyComponentsDisputesList? disputesList;

  ///  The documents property
  AccountSessionsPostRequestBodyComponentsDocuments? documents;

  ///  The financial_account property
  AccountSessionsPostRequestBodyComponentsFinancialAccount? financialAccount;

  ///  The financial_account_transactions property
  AccountSessionsPostRequestBodyComponentsFinancialAccountTransactions?
      financialAccountTransactions;

  ///  The instant_payouts_promotion property
  AccountSessionsPostRequestBodyComponentsInstantPayoutsPromotion?
      instantPayoutsPromotion;

  ///  The issuing_card property
  AccountSessionsPostRequestBodyComponentsIssuingCard? issuingCard;

  ///  The issuing_cards_list property
  AccountSessionsPostRequestBodyComponentsIssuingCardsList? issuingCardsList;

  ///  The notification_banner property
  AccountSessionsPostRequestBodyComponentsNotificationBanner?
      notificationBanner;

  ///  The payment_details property
  AccountSessionsPostRequestBodyComponentsPaymentDetails? paymentDetails;

  ///  The payment_disputes property
  AccountSessionsPostRequestBodyComponentsPaymentDisputes? paymentDisputes;

  ///  The payments property
  AccountSessionsPostRequestBodyComponentsPayments? payments;

  ///  The payout_details property
  AccountSessionsPostRequestBodyComponentsPayoutDetails? payoutDetails;

  ///  The payouts property
  AccountSessionsPostRequestBodyComponentsPayouts? payouts;

  ///  The payouts_list property
  AccountSessionsPostRequestBodyComponentsPayoutsList? payoutsList;

  ///  The tax_registrations property
  AccountSessionsPostRequestBodyComponentsTaxRegistrations? taxRegistrations;

  ///  The tax_settings property
  AccountSessionsPostRequestBodyComponentsTaxSettings? taxSettings;

  /// Instantiates a new [AccountSessionsPostRequestBodyComponents] and sets the default values.
  AccountSessionsPostRequestBodyComponents() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSessionsPostRequestBodyComponents createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountSessionsPostRequestBodyComponents();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_management'] = (node) => accountManagement =
        node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsAccountManagement>(
            AccountSessionsPostRequestBodyComponentsAccountManagement
                .createFromDiscriminatorValue);
    deserializerMap['account_onboarding'] = (node) => accountOnboarding =
        node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsAccountOnboarding>(
            AccountSessionsPostRequestBodyComponentsAccountOnboarding
                .createFromDiscriminatorValue);
    deserializerMap['balances'] = (node) => balances =
        node.getObjectValue<AccountSessionsPostRequestBodyComponentsBalances>(
            AccountSessionsPostRequestBodyComponentsBalances
                .createFromDiscriminatorValue);
    deserializerMap['disputes_list'] = (node) => disputesList = node
        .getObjectValue<AccountSessionsPostRequestBodyComponentsDisputesList>(
            AccountSessionsPostRequestBodyComponentsDisputesList
                .createFromDiscriminatorValue);
    deserializerMap['documents'] = (node) => documents =
        node.getObjectValue<AccountSessionsPostRequestBodyComponentsDocuments>(
            AccountSessionsPostRequestBodyComponentsDocuments
                .createFromDiscriminatorValue);
    deserializerMap['financial_account'] = (node) => financialAccount =
        node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsFinancialAccount>(
            AccountSessionsPostRequestBodyComponentsFinancialAccount
                .createFromDiscriminatorValue);
    deserializerMap['financial_account_transactions'] = (node) =>
        financialAccountTransactions = node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsFinancialAccountTransactions>(
            AccountSessionsPostRequestBodyComponentsFinancialAccountTransactions
                .createFromDiscriminatorValue);
    deserializerMap['instant_payouts_promotion'] = (node) =>
        instantPayoutsPromotion = node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsInstantPayoutsPromotion>(
            AccountSessionsPostRequestBodyComponentsInstantPayoutsPromotion
                .createFromDiscriminatorValue);
    deserializerMap['issuing_card'] = (node) => issuingCard = node
        .getObjectValue<AccountSessionsPostRequestBodyComponentsIssuingCard>(
            AccountSessionsPostRequestBodyComponentsIssuingCard
                .createFromDiscriminatorValue);
    deserializerMap['issuing_cards_list'] = (node) => issuingCardsList =
        node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsIssuingCardsList>(
            AccountSessionsPostRequestBodyComponentsIssuingCardsList
                .createFromDiscriminatorValue);
    deserializerMap['notification_banner'] = (node) => notificationBanner =
        node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsNotificationBanner>(
            AccountSessionsPostRequestBodyComponentsNotificationBanner
                .createFromDiscriminatorValue);
    deserializerMap['payment_details'] = (node) => paymentDetails = node
        .getObjectValue<AccountSessionsPostRequestBodyComponentsPaymentDetails>(
            AccountSessionsPostRequestBodyComponentsPaymentDetails
                .createFromDiscriminatorValue);
    deserializerMap['payment_disputes'] = (node) => paymentDisputes =
        node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsPaymentDisputes>(
            AccountSessionsPostRequestBodyComponentsPaymentDisputes
                .createFromDiscriminatorValue);
    deserializerMap['payments'] = (node) => payments =
        node.getObjectValue<AccountSessionsPostRequestBodyComponentsPayments>(
            AccountSessionsPostRequestBodyComponentsPayments
                .createFromDiscriminatorValue);
    deserializerMap['payout_details'] = (node) => payoutDetails = node
        .getObjectValue<AccountSessionsPostRequestBodyComponentsPayoutDetails>(
            AccountSessionsPostRequestBodyComponentsPayoutDetails
                .createFromDiscriminatorValue);
    deserializerMap['payouts'] = (node) => payouts =
        node.getObjectValue<AccountSessionsPostRequestBodyComponentsPayouts>(
            AccountSessionsPostRequestBodyComponentsPayouts
                .createFromDiscriminatorValue);
    deserializerMap['payouts_list'] = (node) => payoutsList = node
        .getObjectValue<AccountSessionsPostRequestBodyComponentsPayoutsList>(
            AccountSessionsPostRequestBodyComponentsPayoutsList
                .createFromDiscriminatorValue);
    deserializerMap['tax_registrations'] = (node) => taxRegistrations =
        node.getObjectValue<
                AccountSessionsPostRequestBodyComponentsTaxRegistrations>(
            AccountSessionsPostRequestBodyComponentsTaxRegistrations
                .createFromDiscriminatorValue);
    deserializerMap['tax_settings'] = (node) => taxSettings = node
        .getObjectValue<AccountSessionsPostRequestBodyComponentsTaxSettings>(
            AccountSessionsPostRequestBodyComponentsTaxSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsAccountManagement>(
        'account_management', accountManagement);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsAccountOnboarding>(
        'account_onboarding', accountOnboarding);
    writer.writeObjectValue<AccountSessionsPostRequestBodyComponentsBalances>(
        'balances', balances);
    writer
        .writeObjectValue<AccountSessionsPostRequestBodyComponentsDisputesList>(
            'disputes_list', disputesList);
    writer.writeObjectValue<AccountSessionsPostRequestBodyComponentsDocuments>(
        'documents', documents);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsFinancialAccount>(
        'financial_account', financialAccount);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsFinancialAccountTransactions>(
        'financial_account_transactions', financialAccountTransactions);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsInstantPayoutsPromotion>(
        'instant_payouts_promotion', instantPayoutsPromotion);
    writer
        .writeObjectValue<AccountSessionsPostRequestBodyComponentsIssuingCard>(
            'issuing_card', issuingCard);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsIssuingCardsList>(
        'issuing_cards_list', issuingCardsList);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsNotificationBanner>(
        'notification_banner', notificationBanner);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsPaymentDetails>(
        'payment_details', paymentDetails);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsPaymentDisputes>(
        'payment_disputes', paymentDisputes);
    writer.writeObjectValue<AccountSessionsPostRequestBodyComponentsPayments>(
        'payments', payments);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsPayoutDetails>(
        'payout_details', payoutDetails);
    writer.writeObjectValue<AccountSessionsPostRequestBodyComponentsPayouts>(
        'payouts', payouts);
    writer
        .writeObjectValue<AccountSessionsPostRequestBodyComponentsPayoutsList>(
            'payouts_list', payoutsList);
    writer.writeObjectValue<
            AccountSessionsPostRequestBodyComponentsTaxRegistrations>(
        'tax_registrations', taxRegistrations);
    writer
        .writeObjectValue<AccountSessionsPostRequestBodyComponentsTaxSettings>(
            'tax_settings', taxSettings);
    writer.writeAdditionalData(additionalData);
  }
}
