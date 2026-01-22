// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountPaymentsSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge.
  String? statementDescriptor;

  ///  The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
  String? statementDescriptorKana;

  ///  The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
  String? statementDescriptorKanji;

  /// Instantiates a new [AccountPaymentsSettings] and sets the default values.
  AccountPaymentsSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountPaymentsSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountPaymentsSettings();
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
