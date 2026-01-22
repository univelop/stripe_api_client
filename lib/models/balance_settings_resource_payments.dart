// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_resource_payouts.dart';
import './balance_settings_resource_settlement_timing.dart';

/// auto generated
class BalanceSettingsResourcePayments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
  bool? debitNegativeBalances;

  ///  Settings specific to the account's payouts.
  BalanceSettingsResourcePayouts? payouts;

  ///  The settlement_timing property
  BalanceSettingsResourceSettlementTiming? settlementTiming;

  /// Instantiates a new [BalanceSettingsResourcePayments] and sets the default values.
  BalanceSettingsResourcePayments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsResourcePayments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BalanceSettingsResourcePayments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['debit_negative_balances'] =
        (node) => debitNegativeBalances = node.getBoolValue();
    deserializerMap['payouts'] = (node) => payouts =
        node.getObjectValue<BalanceSettingsResourcePayouts>(
            BalanceSettingsResourcePayouts.createFromDiscriminatorValue);
    deserializerMap['settlement_timing'] = (node) => settlementTiming =
        node.getObjectValue<BalanceSettingsResourceSettlementTiming>(
            BalanceSettingsResourceSettlementTiming
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('debit_negative_balances',
        value: debitNegativeBalances);
    writer.writeObjectValue<BalanceSettingsResourcePayouts>('payouts', payouts);
    writer.writeObjectValue<BalanceSettingsResourceSettlementTiming>(
        'settlement_timing', settlementTiming);
    writer.writeAdditionalData(additionalData);
  }
}
