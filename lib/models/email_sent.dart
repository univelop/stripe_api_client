// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class EmailSent implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp when the email was sent.
  int? emailSentAt;

  ///  The recipient's email address.
  String? emailSentTo;

  /// Instantiates a new [EmailSent] and sets the default values.
  EmailSent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static EmailSent createFromDiscriminatorValue(ParseNode parseNode) {
    return EmailSent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['email_sent_at'] =
        (node) => emailSentAt = node.getIntValue();
    deserializerMap['email_sent_to'] =
        (node) => emailSentTo = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('email_sent_at', emailSentAt);
    writer.writeStringValue('email_sent_to', emailSentTo);
    writer.writeAdditionalData(additionalData);
  }
}
