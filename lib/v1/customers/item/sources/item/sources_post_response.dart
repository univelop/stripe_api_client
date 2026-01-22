// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/bank_account.dart';
import '../../../../../models/card.dart';
import '../../../../../models/source.dart';

/// auto generated
/// Composed type wrapper for classes [BankAccount], [Card], [Source]
class SourcesPostResponse implements Parsable {
  ///  Composed type representation for type [BankAccount]
  BankAccount? bankAccount;

  ///  Composed type representation for type [Card]
  Card? card;

  ///  Composed type representation for type [Source]
  Source? source;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostResponse createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SourcesPostResponse();
    result.bankAccount = BankAccount();
    result.card = Card();
    result.source = Source();
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
    if (source != null) {
      source!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BankAccount>(null, bankAccount, [card, source]);
  }
}
