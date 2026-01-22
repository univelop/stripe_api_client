// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/bank_account.dart';
import '../../../models/card.dart';

/// auto generated
/// Composed type wrapper for classes [BankAccount], [Card]
class ExternalAccount implements Parsable {
  ///  Composed type representation for type [BankAccount]
  BankAccount? bankAccount;

  ///  Composed type representation for type [Card]
  Card? card;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ExternalAccount createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ExternalAccount();
    result.bankAccount = BankAccount();
    result.card = Card();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (bankAccount != null) {
      bankAccount!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (card != null) {
      card!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BankAccount>(null, bankAccount, [card]);
  }
}
