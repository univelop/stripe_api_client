// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connect_account_reference.dart';
import './payment_pages_checkout_session_automatic_tax_status.dart';

/// auto generated
class PaymentPagesCheckoutSessionAutomaticTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates whether automatic tax is enabled for the session
  bool? enabled;

  ///  The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
  ConnectAccountReference? liability;

  ///  The tax provider powering automatic tax.
  String? provider;

  ///  The status of the most recent automated tax calculation for this session.
  PaymentPagesCheckoutSessionAutomaticTaxStatus? status;

  /// Instantiates a new [PaymentPagesCheckoutSessionAutomaticTax] and sets the default values.
  PaymentPagesCheckoutSessionAutomaticTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionAutomaticTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionAutomaticTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['liability'] = (node) => liability =
        node.getObjectValue<ConnectAccountReference>(
            ConnectAccountReference.createFromDiscriminatorValue);
    deserializerMap['provider'] = (node) => provider = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<PaymentPagesCheckoutSessionAutomaticTaxStatus>(
            (stringValue) => PaymentPagesCheckoutSessionAutomaticTaxStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<ConnectAccountReference>('liability', liability);
    writer.writeStringValue('provider', provider);
    writer.writeEnumValue<PaymentPagesCheckoutSessionAutomaticTaxStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
