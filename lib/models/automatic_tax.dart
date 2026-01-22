// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './automatic_tax_disabled_reason.dart';
import './automatic_tax_status.dart';
import './connect_account_reference.dart';

/// auto generated
class AutomaticTax implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If Stripe disabled automatic tax, this enum describes why.
  AutomaticTaxDisabledReason? disabledReason;

  ///  Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://docs.stripe.com/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
  bool? enabled;

  ///  The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
  ConnectAccountReference? liability;

  ///  The tax provider powering automatic tax.
  String? provider;

  ///  The status of the most recent automated tax calculation for this invoice.
  AutomaticTaxStatus? status;

  /// Instantiates a new [AutomaticTax] and sets the default values.
  AutomaticTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AutomaticTax createFromDiscriminatorValue(ParseNode parseNode) {
    return AutomaticTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['disabled_reason'] = (node) => disabledReason =
        node.getEnumValue<AutomaticTaxDisabledReason>((stringValue) =>
            AutomaticTaxDisabledReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['liability'] = (node) => liability =
        node.getObjectValue<ConnectAccountReference>(
            ConnectAccountReference.createFromDiscriminatorValue);
    deserializerMap['provider'] = (node) => provider = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<AutomaticTaxStatus>((stringValue) =>
            AutomaticTaxStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AutomaticTaxDisabledReason>(
        'disabled_reason', disabledReason, (e) => e?.value);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<ConnectAccountReference>('liability', liability);
    writer.writeStringValue('provider', provider);
    writer.writeEnumValue<AutomaticTaxStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
