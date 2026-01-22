// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_object.dart';
import './balance_settings_resource_payments.dart';

/// auto generated
/// Options for customizing account balances and payout settings for a Stripe platform’s connected accounts.
class BalanceSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  String representing the object's type. Objects of the same type share the same value.
  BalanceSettingsObject? object;

  ///  The payments property
  BalanceSettingsResourcePayments? payments;

  /// Instantiates a new [BalanceSettings] and sets the default values.
  BalanceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettings createFromDiscriminatorValue(ParseNode parseNode) {
    return BalanceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<BalanceSettingsObject>((stringValue) =>
            BalanceSettingsObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payments'] = (node) => payments =
        node.getObjectValue<BalanceSettingsResourcePayments>(
            BalanceSettingsResourcePayments.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<BalanceSettingsObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<BalanceSettingsResourcePayments>(
        'payments', payments);
    writer.writeAdditionalData(additionalData);
  }
}
