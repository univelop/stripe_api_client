// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_customer_balance_settings_reconciliation_mode.dart';

/// auto generated
class CustomerBalanceCustomerBalanceSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The configuration for how funds that land in the customer cash balance are reconciled.
  CustomerBalanceCustomerBalanceSettingsReconciliationMode? reconciliationMode;

  ///  A flag to indicate if reconciliation mode returned is the user's default or is specific to this customer cash balance
  bool? usingMerchantDefault;

  /// Instantiates a new [CustomerBalanceCustomerBalanceSettings] and sets the default values.
  CustomerBalanceCustomerBalanceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceCustomerBalanceSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomerBalanceCustomerBalanceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['reconciliation_mode'] = (node) => reconciliationMode = node
        .getEnumValue<CustomerBalanceCustomerBalanceSettingsReconciliationMode>(
            (stringValue) =>
                CustomerBalanceCustomerBalanceSettingsReconciliationMode.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['using_merchant_default'] =
        (node) => usingMerchantDefault = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            CustomerBalanceCustomerBalanceSettingsReconciliationMode>(
        'reconciliation_mode', reconciliationMode, (e) => e?.value);
    writer.writeBoolValue('using_merchant_default',
        value: usingMerchantDefault);
    writer.writeAdditionalData(additionalData);
  }
}
