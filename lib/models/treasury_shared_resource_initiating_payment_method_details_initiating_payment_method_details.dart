// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './received_payment_method_details_financial_account.dart';
import './treasury_shared_resource_billing_details.dart';
import './treasury_shared_resource_initiating_payment_method_details_initiating_payment_method_details_balance.dart';
import './treasury_shared_resource_initiating_payment_method_details_initiating_payment_method_details_type.dart';
import './treasury_shared_resource_initiating_payment_method_details_us_bank_account.dart';

/// auto generated
class TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Set when `type` is `balance`.
  TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance?
      balance;

  ///  The billing_details property
  TreasurySharedResourceBillingDetails? billingDetails;

  ///  The financial_account property
  ReceivedPaymentMethodDetailsFinancialAccount? financialAccount;

  ///  Set when `type` is `issuing_card`. This is an [Issuing Card](https://api.stripe.com#issuing_cards) ID.
  String? issuingCard;

  ///  Polymorphic type matching the originating money movement's source. This can be an external account, a Stripe balance, or a FinancialAccount.
  TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType?
      type_;

  ///  The us_bank_account property
  TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails] and sets the default values.
  TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['balance'] = (node) => balance = node.getEnumValue<
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance>(
        (stringValue) =>
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<TreasurySharedResourceBillingDetails>(
            TreasurySharedResourceBillingDetails.createFromDiscriminatorValue);
    deserializerMap['financial_account'] = (node) => financialAccount =
        node.getObjectValue<ReceivedPaymentMethodDetailsFinancialAccount>(
            ReceivedPaymentMethodDetailsFinancialAccount
                .createFromDiscriminatorValue);
    deserializerMap['issuing_card'] =
        (node) => issuingCard = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType>(
        (stringValue) =>
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount>(
        TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsBalance>(
        'balance', balance, (e) => e?.value);
    writer.writeObjectValue<TreasurySharedResourceBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<ReceivedPaymentMethodDetailsFinancialAccount>(
        'financial_account', financialAccount);
    writer.writeStringValue('issuing_card', issuingCard);
    writer.writeEnumValue<
            TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            TreasurySharedResourceInitiatingPaymentMethodDetailsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
