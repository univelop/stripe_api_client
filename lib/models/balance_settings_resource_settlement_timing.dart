// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class BalanceSettingsResourceSettlementTiming
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The number of days charge funds are held before becoming available.
  int? delayDays;

  ///  The number of days charge funds are held before becoming available. If present, overrides the default, or minimum available, for the account.
  int? delayDaysOverride;

  /// Instantiates a new [BalanceSettingsResourceSettlementTiming] and sets the default values.
  BalanceSettingsResourceSettlementTiming() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsResourceSettlementTiming createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BalanceSettingsResourceSettlementTiming();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['delay_days'] = (node) => delayDays = node.getIntValue();
    deserializerMap['delay_days_override'] =
        (node) => delayDaysOverride = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('delay_days', delayDays);
    writer.writeIntValue('delay_days_override', delayDaysOverride);
    writer.writeAdditionalData(additionalData);
  }
}
