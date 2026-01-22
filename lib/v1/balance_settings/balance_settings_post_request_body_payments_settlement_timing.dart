// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_post_request_body_payments_settlement_timing_delay_days_override.dart';

/// auto generated
class BalanceSettingsPostRequestBodyPaymentsSettlementTiming
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The delay_days_override property
  BalanceSettingsPostRequestBodyPaymentsSettlementTimingDelayDaysOverride?
      delayDaysOverride;

  /// Instantiates a new [BalanceSettingsPostRequestBodyPaymentsSettlementTiming] and sets the default values.
  BalanceSettingsPostRequestBodyPaymentsSettlementTiming()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsPostRequestBodyPaymentsSettlementTiming
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BalanceSettingsPostRequestBodyPaymentsSettlementTiming();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'delay_days_override'] = (node) => delayDaysOverride = node.getObjectValue<
            BalanceSettingsPostRequestBodyPaymentsSettlementTimingDelayDaysOverride>(
        BalanceSettingsPostRequestBodyPaymentsSettlementTimingDelayDaysOverride
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BalanceSettingsPostRequestBodyPaymentsSettlementTimingDelayDaysOverride>(
        'delay_days_override', delayDaysOverride);
    writer.writeAdditionalData(additionalData);
  }
}
