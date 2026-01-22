// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeBancontact implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_code property
  String? bankCode;

  ///  The bank_name property
  String? bankName;

  ///  The bic property
  String? bic;

  ///  The iban_last4 property
  String? ibanLast4;

  ///  The preferred_language property
  String? preferredLanguage;

  ///  The statement_descriptor property
  String? statementDescriptor;

  /// Instantiates a new [SourceTypeBancontact] and sets the default values.
  SourceTypeBancontact() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeBancontact createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTypeBancontact();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_code'] = (node) => bankCode = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['bic'] = (node) => bic = node.getStringValue();
    deserializerMap['iban_last4'] = (node) => ibanLast4 = node.getStringValue();
    deserializerMap['preferred_language'] =
        (node) => preferredLanguage = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_code', bankCode);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('bic', bic);
    writer.writeStringValue('iban_last4', ibanLast4);
    writer.writeStringValue('preferred_language', preferredLanguage);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeAdditionalData(additionalData);
  }
}
