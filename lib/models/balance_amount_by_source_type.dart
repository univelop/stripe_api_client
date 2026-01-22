// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class BalanceAmountBySourceType implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
  int? bankAccount;

  ///  Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
  int? card;

  ///  Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
  int? fpx;

  /// Instantiates a new [BalanceAmountBySourceType] and sets the default values.
  BalanceAmountBySourceType() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceAmountBySourceType createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BalanceAmountBySourceType();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_account'] =
        (node) => bankAccount = node.getIntValue();
    deserializerMap['card'] = (node) => card = node.getIntValue();
    deserializerMap['fpx'] = (node) => fpx = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('bank_account', bankAccount);
    writer.writeIntValue('card', card);
    writer.writeIntValue('fpx', fpx);
    writer.writeAdditionalData(additionalData);
  }
}
