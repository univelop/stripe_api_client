// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_connections_resource_balance_api_resource_cash_balance.dart';
import './bank_connections_resource_balance_api_resource_credit_balance.dart';
import './bank_connections_resource_balance_current.dart';
import './bank_connections_resource_balance_type.dart';

/// auto generated
class BankConnectionsResourceBalance implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The time that the external institution calculated this balance. Measured in seconds since the Unix epoch.
  int? asOf;

  ///  The cash property
  BankConnectionsResourceBalanceApiResourceCashBalance? cash;

  ///  The credit property
  BankConnectionsResourceBalanceApiResourceCreditBalance? credit;

  ///  The balances owed to (or by) the account holder, before subtracting any outbound pending transactions or adding any inbound pending transactions.Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
  BankConnectionsResourceBalanceCurrent? current;

  ///  The `type` of the balance. An additional hash is included on the balance with a name matching this value.
  BankConnectionsResourceBalanceType? type_;

  /// Instantiates a new [BankConnectionsResourceBalance] and sets the default values.
  BankConnectionsResourceBalance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankConnectionsResourceBalance createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BankConnectionsResourceBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['as_of'] = (node) => asOf = node.getIntValue();
    deserializerMap['cash'] = (node) => cash = node
        .getObjectValue<BankConnectionsResourceBalanceApiResourceCashBalance>(
            BankConnectionsResourceBalanceApiResourceCashBalance
                .createFromDiscriminatorValue);
    deserializerMap['credit'] = (node) => credit = node
        .getObjectValue<BankConnectionsResourceBalanceApiResourceCreditBalance>(
            BankConnectionsResourceBalanceApiResourceCreditBalance
                .createFromDiscriminatorValue);
    deserializerMap['current'] = (node) => current =
        node.getObjectValue<BankConnectionsResourceBalanceCurrent>(
            BankConnectionsResourceBalanceCurrent.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BankConnectionsResourceBalanceType>((stringValue) =>
            BankConnectionsResourceBalanceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('as_of', asOf);
    writer
        .writeObjectValue<BankConnectionsResourceBalanceApiResourceCashBalance>(
            'cash', cash);
    writer.writeObjectValue<
            BankConnectionsResourceBalanceApiResourceCreditBalance>(
        'credit', credit);
    writer.writeObjectValue<BankConnectionsResourceBalanceCurrent>(
        'current', current);
    writer.writeEnumValue<BankConnectionsResourceBalanceType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
