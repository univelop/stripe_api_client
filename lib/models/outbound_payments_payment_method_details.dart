// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_payments_payment_method_details_financial_account.dart';
import './outbound_payments_payment_method_details_type.dart';
import './outbound_payments_payment_method_details_us_bank_account.dart';
import './treasury_shared_resource_billing_details.dart';

/// auto generated
class OutboundPaymentsPaymentMethodDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_details property
  TreasurySharedResourceBillingDetails? billingDetails;

  ///  The financial_account property
  OutboundPaymentsPaymentMethodDetailsFinancialAccount? financialAccount;

  ///  The type of the payment method used in the OutboundPayment.
  OutboundPaymentsPaymentMethodDetailsType? type_;

  ///  The us_bank_account property
  OutboundPaymentsPaymentMethodDetailsUsBankAccount? usBankAccount;

  /// Instantiates a new [OutboundPaymentsPaymentMethodDetails] and sets the default values.
  OutboundPaymentsPaymentMethodDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPaymentMethodDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return OutboundPaymentsPaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<TreasurySharedResourceBillingDetails>(
            TreasurySharedResourceBillingDetails.createFromDiscriminatorValue);
    deserializerMap['financial_account'] = (node) => financialAccount = node
        .getObjectValue<OutboundPaymentsPaymentMethodDetailsFinancialAccount>(
            OutboundPaymentsPaymentMethodDetailsFinancialAccount
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<OutboundPaymentsPaymentMethodDetailsType>(
            (stringValue) => OutboundPaymentsPaymentMethodDetailsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<OutboundPaymentsPaymentMethodDetailsUsBankAccount>(
            OutboundPaymentsPaymentMethodDetailsUsBankAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TreasurySharedResourceBillingDetails>(
        'billing_details', billingDetails);
    writer
        .writeObjectValue<OutboundPaymentsPaymentMethodDetailsFinancialAccount>(
            'financial_account', financialAccount);
    writer.writeEnumValue<OutboundPaymentsPaymentMethodDetailsType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<OutboundPaymentsPaymentMethodDetailsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
