// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountsPostRequestBodySettingsPayments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The statement_descriptor property
  String? statementDescriptor;

  ///  The statement_descriptor_kana property
  String? statementDescriptorKana;

  ///  The statement_descriptor_kanji property
  String? statementDescriptorKanji;

  /// Instantiates a new [AccountsPostRequestBodySettingsPayments] and sets the default values.
  AccountsPostRequestBodySettingsPayments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodySettingsPayments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodySettingsPayments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['statement_descriptor_kana'] =
        (node) => statementDescriptorKana = node.getStringValue();
    deserializerMap['statement_descriptor_kanji'] =
        (node) => statementDescriptorKanji = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue(
        'statement_descriptor_kana', statementDescriptorKana);
    writer.writeStringValue(
        'statement_descriptor_kanji', statementDescriptorKanji);
    writer.writeAdditionalData(additionalData);
  }
}
