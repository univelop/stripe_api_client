// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_connections_resource_balance_api_resource_credit_balance_used.dart';

/// auto generated
class BankConnectionsResourceBalanceApiResourceCreditBalance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The credit that has been used by the account holder.Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
  BankConnectionsResourceBalanceApiResourceCreditBalanceUsed? used;

  /// Instantiates a new [BankConnectionsResourceBalanceApiResourceCreditBalance] and sets the default values.
  BankConnectionsResourceBalanceApiResourceCreditBalance()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankConnectionsResourceBalanceApiResourceCreditBalance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BankConnectionsResourceBalanceApiResourceCreditBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['used'] = (node) => used = node.getObjectValue<
            BankConnectionsResourceBalanceApiResourceCreditBalanceUsed>(
        BankConnectionsResourceBalanceApiResourceCreditBalanceUsed
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BankConnectionsResourceBalanceApiResourceCreditBalanceUsed>(
        'used', used);
    writer.writeAdditionalData(additionalData);
  }
}
