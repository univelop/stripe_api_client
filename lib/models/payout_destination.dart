// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_account.dart';
import './card.dart';
import './deleted_bank_account.dart';
import './deleted_card.dart';

/// auto generated
/// Composed type wrapper for classes [BankAccount], [Card], [DeletedBankAccount], [DeletedCard], [String?]
class PayoutDestination implements Parsable {
  ///  Composed type representation for type [BankAccount]
  BankAccount? bankAccount;

  ///  Composed type representation for type [Card]
  Card? card;

  ///  Composed type representation for type [DeletedBankAccount]
  DeletedBankAccount? deletedBankAccount;

  ///  Composed type representation for type [DeletedCard]
  DeletedCard? deletedCard;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PayoutDestination createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PayoutDestination();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.bankAccount = BankAccount();
      result.card = Card();
      result.deletedBankAccount = DeletedBankAccount();
      result.deletedCard = DeletedCard();
    }
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
    if (deletedBankAccount != null) {
      deletedBankAccount!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    if (deletedCard != null) {
      deletedCard!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<BankAccount>(
          null, bankAccount, [card, deletedBankAccount, deletedCard]);
    }
  }
}
