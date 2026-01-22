// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_customer_post_request_body_cash_balance_settings_reconciliation_mode.dart';

/// auto generated
class WithCustomerPostRequestBodyCashBalanceSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The reconciliation_mode property
  WithCustomerPostRequestBodyCashBalanceSettingsReconciliationMode?
      reconciliationMode;

  /// Instantiates a new [WithCustomerPostRequestBodyCashBalanceSettings] and sets the default values.
  WithCustomerPostRequestBodyCashBalanceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCustomerPostRequestBodyCashBalanceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithCustomerPostRequestBodyCashBalanceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['reconciliation_mode'] = (node) => reconciliationMode =
        node.getEnumValue<
                WithCustomerPostRequestBodyCashBalanceSettingsReconciliationMode>(
            (stringValue) =>
                WithCustomerPostRequestBodyCashBalanceSettingsReconciliationMode
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithCustomerPostRequestBodyCashBalanceSettingsReconciliationMode>(
        'reconciliation_mode', reconciliationMode, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
