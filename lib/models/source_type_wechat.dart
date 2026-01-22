// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeWechat implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The prepay_id property
  String? prepayId;

  ///  The qr_code_url property
  String? qrCodeUrl;

  ///  The statement_descriptor property
  String? statementDescriptor;

  /// Instantiates a new [SourceTypeWechat] and sets the default values.
  SourceTypeWechat() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeWechat createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceTypeWechat();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['prepay_id'] = (node) => prepayId = node.getStringValue();
    deserializerMap['qr_code_url'] =
        (node) => qrCodeUrl = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('prepay_id', prepayId);
    writer.writeStringValue('qr_code_url', qrCodeUrl);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeAdditionalData(additionalData);
  }
}
