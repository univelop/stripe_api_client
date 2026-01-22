// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_credit_grants_resource_amount.dart';

/// auto generated
class CreditBalance implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The available_balance property
  BillingCreditGrantsResourceAmount? availableBalance;

  ///  The ledger_balance property
  BillingCreditGrantsResourceAmount? ledgerBalance;

  /// Instantiates a new [CreditBalance] and sets the default values.
  CreditBalance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditBalance createFromDiscriminatorValue(ParseNode parseNode) {
    return CreditBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['available_balance'] = (node) => availableBalance =
        node.getObjectValue<BillingCreditGrantsResourceAmount>(
            BillingCreditGrantsResourceAmount.createFromDiscriminatorValue);
    deserializerMap['ledger_balance'] = (node) => ledgerBalance =
        node.getObjectValue<BillingCreditGrantsResourceAmount>(
            BillingCreditGrantsResourceAmount.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BillingCreditGrantsResourceAmount>(
        'available_balance', availableBalance);
    writer.writeObjectValue<BillingCreditGrantsResourceAmount>(
        'ledger_balance', ledgerBalance);
    writer.writeAdditionalData(additionalData);
  }
}
