// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_post_request_body_payments_payouts.dart';
import './balance_settings_post_request_body_payments_settlement_timing.dart';

/// auto generated
/// Settings that apply to the [Payments Balance](https://docs.stripe.com/api/balance).
class BalanceSettingsPostRequestBodyPayments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The debit_negative_balances property
  bool? debitNegativeBalances;

  ///  The payouts property
  BalanceSettingsPostRequestBodyPaymentsPayouts? payouts;

  ///  The settlement_timing property
  BalanceSettingsPostRequestBodyPaymentsSettlementTiming? settlementTiming;

  /// Instantiates a new [BalanceSettingsPostRequestBodyPayments] and sets the default values.
  BalanceSettingsPostRequestBodyPayments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsPostRequestBodyPayments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BalanceSettingsPostRequestBodyPayments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['debit_negative_balances'] =
        (node) => debitNegativeBalances = node.getBoolValue();
    deserializerMap['payouts'] = (node) => payouts =
        node.getObjectValue<BalanceSettingsPostRequestBodyPaymentsPayouts>(
            BalanceSettingsPostRequestBodyPaymentsPayouts
                .createFromDiscriminatorValue);
    deserializerMap['settlement_timing'] = (node) => settlementTiming = node
        .getObjectValue<BalanceSettingsPostRequestBodyPaymentsSettlementTiming>(
            BalanceSettingsPostRequestBodyPaymentsSettlementTiming
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('debit_negative_balances',
        value: debitNegativeBalances);
    writer.writeObjectValue<BalanceSettingsPostRequestBodyPaymentsPayouts>(
        'payouts', payouts);
    writer.writeObjectValue<
            BalanceSettingsPostRequestBodyPaymentsSettlementTiming>(
        'settlement_timing', settlementTiming);
    writer.writeAdditionalData(additionalData);
  }
}
