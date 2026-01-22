// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/deleted_bank_account.dart';
import '../../../../../models/deleted_card.dart';

/// auto generated
/// Composed type wrapper for classes [DeletedBankAccount], [DeletedCard]
class DeletedExternalAccount implements Parsable {
  ///  Composed type representation for type [DeletedBankAccount]
  DeletedBankAccount? deletedBankAccount;

  ///  Composed type representation for type [DeletedCard]
  DeletedCard? deletedCard;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DeletedExternalAccount createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = DeletedExternalAccount();
    result.deletedBankAccount = DeletedBankAccount();
    result.deletedCard = DeletedCard();
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
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
    writer.writeObjectValue<DeletedBankAccount>(
        null, deletedBankAccount, [deletedCard]);
  }
}
