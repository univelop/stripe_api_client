// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connect_account_reference.dart';
import './quotes_resource_automatic_tax_status.dart';

/// auto generated
class QuotesResourceAutomaticTax implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Automatically calculate taxes
  bool? enabled;

  ///  The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
  ConnectAccountReference? liability;

  ///  The tax provider powering automatic tax.
  String? provider;

  ///  The status of the most recent automated tax calculation for this quote.
  QuotesResourceAutomaticTaxStatus? status;

  /// Instantiates a new [QuotesResourceAutomaticTax] and sets the default values.
  QuotesResourceAutomaticTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceAutomaticTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesResourceAutomaticTax();
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
        node.getEnumValue<QuotesResourceAutomaticTaxStatus>((stringValue) =>
            QuotesResourceAutomaticTaxStatus.values
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
    writer.writeEnumValue<QuotesResourceAutomaticTaxStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
