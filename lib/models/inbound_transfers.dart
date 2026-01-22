// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './inbound_transfers_payment_method_details_us_bank_account.dart';
import './inbound_transfers_type.dart';
import './treasury_shared_resource_billing_details.dart';

/// auto generated
class InboundTransfers implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_details property
  TreasurySharedResourceBillingDetails? billingDetails;

  ///  The type of the payment method used in the InboundTransfer.
  InboundTransfersType? type_;

  ///  The us_bank_account property
  InboundTransfersPaymentMethodDetailsUsBankAccount? usBankAccount;

  /// Instantiates a new [InboundTransfers] and sets the default values.
  InboundTransfers() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InboundTransfers createFromDiscriminatorValue(ParseNode parseNode) {
    return InboundTransfers();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<TreasurySharedResourceBillingDetails>(
            TreasurySharedResourceBillingDetails.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<InboundTransfersType>((stringValue) =>
            InboundTransfersType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<InboundTransfersPaymentMethodDetailsUsBankAccount>(
            InboundTransfersPaymentMethodDetailsUsBankAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TreasurySharedResourceBillingDetails>(
        'billing_details', billingDetails);
    writer.writeEnumValue<InboundTransfersType>('type', type_, (e) => e?.value);
    writer.writeObjectValue<InboundTransfersPaymentMethodDetailsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
