// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connect_embedded_account_config_claim.dart';
import './connect_embedded_base_config_claim.dart';
import './connect_embedded_disputes_list_config.dart';
import './connect_embedded_financial_account_config_claim.dart';
import './connect_embedded_financial_account_transactions_config_claim.dart';
import './connect_embedded_instant_payouts_promotion_config.dart';
import './connect_embedded_issuing_card_config_claim.dart';
import './connect_embedded_issuing_cards_list_config_claim.dart';
import './connect_embedded_payment_disputes_config.dart';
import './connect_embedded_payments_config_claim.dart';
import './connect_embedded_payouts_config.dart';

/// auto generated
class ConnectEmbeddedAccountSessionCreateComponents
    implements AdditionalDataHolder, Parsable {
  ///  The account_management property
  ConnectEmbeddedAccountConfigClaim? accountManagement;

  ///  The account_onboarding property
  ConnectEmbeddedAccountConfigClaim? accountOnboarding;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The balances property
  ConnectEmbeddedPayoutsConfig? balances;

  ///  The disputes_list property
  ConnectEmbeddedDisputesListConfig? disputesList;

  ///  The documents property
  ConnectEmbeddedBaseConfigClaim? documents;

  ///  The financial_account property
  ConnectEmbeddedFinancialAccountConfigClaim? financialAccount;

  ///  The financial_account_transactions property
  ConnectEmbeddedFinancialAccountTransactionsConfigClaim?
      financialAccountTransactions;

  ///  The instant_payouts_promotion property
  ConnectEmbeddedInstantPayoutsPromotionConfig? instantPayoutsPromotion;

  ///  The issuing_card property
  ConnectEmbeddedIssuingCardConfigClaim? issuingCard;

  ///  The issuing_cards_list property
  ConnectEmbeddedIssuingCardsListConfigClaim? issuingCardsList;

  ///  The notification_banner property
  ConnectEmbeddedAccountConfigClaim? notificationBanner;

  ///  The payment_details property
  ConnectEmbeddedPaymentsConfigClaim? paymentDetails;

  ///  The payment_disputes property
  ConnectEmbeddedPaymentDisputesConfig? paymentDisputes;

  ///  The payments property
  ConnectEmbeddedPaymentsConfigClaim? payments;

  ///  The payout_details property
  ConnectEmbeddedBaseConfigClaim? payoutDetails;

  ///  The payouts property
  ConnectEmbeddedPayoutsConfig? payouts;

  ///  The payouts_list property
  ConnectEmbeddedBaseConfigClaim? payoutsList;

  ///  The tax_registrations property
  ConnectEmbeddedBaseConfigClaim? taxRegistrations;

  ///  The tax_settings property
  ConnectEmbeddedBaseConfigClaim? taxSettings;

  /// Instantiates a new [ConnectEmbeddedAccountSessionCreateComponents] and sets the default values.
  ConnectEmbeddedAccountSessionCreateComponents() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConnectEmbeddedAccountSessionCreateComponents
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConnectEmbeddedAccountSessionCreateComponents();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_management'] = (node) => accountManagement =
        node.getObjectValue<ConnectEmbeddedAccountConfigClaim>(
            ConnectEmbeddedAccountConfigClaim.createFromDiscriminatorValue);
    deserializerMap['account_onboarding'] = (node) => accountOnboarding =
        node.getObjectValue<ConnectEmbeddedAccountConfigClaim>(
            ConnectEmbeddedAccountConfigClaim.createFromDiscriminatorValue);
    deserializerMap['balances'] = (node) => balances =
        node.getObjectValue<ConnectEmbeddedPayoutsConfig>(
            ConnectEmbeddedPayoutsConfig.createFromDiscriminatorValue);
    deserializerMap['disputes_list'] = (node) => disputesList =
        node.getObjectValue<ConnectEmbeddedDisputesListConfig>(
            ConnectEmbeddedDisputesListConfig.createFromDiscriminatorValue);
    deserializerMap['documents'] = (node) => documents =
        node.getObjectValue<ConnectEmbeddedBaseConfigClaim>(
            ConnectEmbeddedBaseConfigClaim.createFromDiscriminatorValue);
    deserializerMap['financial_account'] = (node) => financialAccount =
        node.getObjectValue<ConnectEmbeddedFinancialAccountConfigClaim>(
            ConnectEmbeddedFinancialAccountConfigClaim
                .createFromDiscriminatorValue);
    deserializerMap['financial_account_transactions'] = (node) =>
        financialAccountTransactions = node.getObjectValue<
                ConnectEmbeddedFinancialAccountTransactionsConfigClaim>(
            ConnectEmbeddedFinancialAccountTransactionsConfigClaim
                .createFromDiscriminatorValue);
    deserializerMap['instant_payouts_promotion'] = (node) =>
        instantPayoutsPromotion =
            node.getObjectValue<ConnectEmbeddedInstantPayoutsPromotionConfig>(
                ConnectEmbeddedInstantPayoutsPromotionConfig
                    .createFromDiscriminatorValue);
    deserializerMap['issuing_card'] = (node) => issuingCard =
        node.getObjectValue<ConnectEmbeddedIssuingCardConfigClaim>(
            ConnectEmbeddedIssuingCardConfigClaim.createFromDiscriminatorValue);
    deserializerMap['issuing_cards_list'] = (node) => issuingCardsList =
        node.getObjectValue<ConnectEmbeddedIssuingCardsListConfigClaim>(
            ConnectEmbeddedIssuingCardsListConfigClaim
                .createFromDiscriminatorValue);
    deserializerMap['notification_banner'] = (node) => notificationBanner =
        node.getObjectValue<ConnectEmbeddedAccountConfigClaim>(
            ConnectEmbeddedAccountConfigClaim.createFromDiscriminatorValue);
    deserializerMap['payment_details'] = (node) => paymentDetails =
        node.getObjectValue<ConnectEmbeddedPaymentsConfigClaim>(
            ConnectEmbeddedPaymentsConfigClaim.createFromDiscriminatorValue);
    deserializerMap['payment_disputes'] = (node) => paymentDisputes =
        node.getObjectValue<ConnectEmbeddedPaymentDisputesConfig>(
            ConnectEmbeddedPaymentDisputesConfig.createFromDiscriminatorValue);
    deserializerMap['payments'] = (node) => payments =
        node.getObjectValue<ConnectEmbeddedPaymentsConfigClaim>(
            ConnectEmbeddedPaymentsConfigClaim.createFromDiscriminatorValue);
    deserializerMap['payout_details'] = (node) => payoutDetails =
        node.getObjectValue<ConnectEmbeddedBaseConfigClaim>(
            ConnectEmbeddedBaseConfigClaim.createFromDiscriminatorValue);
    deserializerMap['payouts'] = (node) => payouts =
        node.getObjectValue<ConnectEmbeddedPayoutsConfig>(
            ConnectEmbeddedPayoutsConfig.createFromDiscriminatorValue);
    deserializerMap['payouts_list'] = (node) => payoutsList =
        node.getObjectValue<ConnectEmbeddedBaseConfigClaim>(
            ConnectEmbeddedBaseConfigClaim.createFromDiscriminatorValue);
    deserializerMap['tax_registrations'] = (node) => taxRegistrations =
        node.getObjectValue<ConnectEmbeddedBaseConfigClaim>(
            ConnectEmbeddedBaseConfigClaim.createFromDiscriminatorValue);
    deserializerMap['tax_settings'] = (node) => taxSettings =
        node.getObjectValue<ConnectEmbeddedBaseConfigClaim>(
            ConnectEmbeddedBaseConfigClaim.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConnectEmbeddedAccountConfigClaim>(
        'account_management', accountManagement);
    writer.writeObjectValue<ConnectEmbeddedAccountConfigClaim>(
        'account_onboarding', accountOnboarding);
    writer.writeObjectValue<ConnectEmbeddedPayoutsConfig>('balances', balances);
    writer.writeObjectValue<ConnectEmbeddedDisputesListConfig>(
        'disputes_list', disputesList);
    writer.writeObjectValue<ConnectEmbeddedBaseConfigClaim>(
        'documents', documents);
    writer.writeObjectValue<ConnectEmbeddedFinancialAccountConfigClaim>(
        'financial_account', financialAccount);
    writer.writeObjectValue<
            ConnectEmbeddedFinancialAccountTransactionsConfigClaim>(
        'financial_account_transactions', financialAccountTransactions);
    writer.writeObjectValue<ConnectEmbeddedInstantPayoutsPromotionConfig>(
        'instant_payouts_promotion', instantPayoutsPromotion);
    writer.writeObjectValue<ConnectEmbeddedIssuingCardConfigClaim>(
        'issuing_card', issuingCard);
    writer.writeObjectValue<ConnectEmbeddedIssuingCardsListConfigClaim>(
        'issuing_cards_list', issuingCardsList);
    writer.writeObjectValue<ConnectEmbeddedAccountConfigClaim>(
        'notification_banner', notificationBanner);
    writer.writeObjectValue<ConnectEmbeddedPaymentsConfigClaim>(
        'payment_details', paymentDetails);
    writer.writeObjectValue<ConnectEmbeddedPaymentDisputesConfig>(
        'payment_disputes', paymentDisputes);
    writer.writeObjectValue<ConnectEmbeddedPaymentsConfigClaim>(
        'payments', payments);
    writer.writeObjectValue<ConnectEmbeddedBaseConfigClaim>(
        'payout_details', payoutDetails);
    writer.writeObjectValue<ConnectEmbeddedPayoutsConfig>('payouts', payouts);
    writer.writeObjectValue<ConnectEmbeddedBaseConfigClaim>(
        'payouts_list', payoutsList);
    writer.writeObjectValue<ConnectEmbeddedBaseConfigClaim>(
        'tax_registrations', taxRegistrations);
    writer.writeObjectValue<ConnectEmbeddedBaseConfigClaim>(
        'tax_settings', taxSettings);
    writer.writeAdditionalData(additionalData);
  }
}
