// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './email_sent.dart';

/// auto generated
class RefundNextActionDisplayDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The email_sent property
  EmailSent? emailSent;

  ///  The expiry timestamp.
  int? expiresAt;

  /// Instantiates a new [RefundNextActionDisplayDetails] and sets the default values.
  RefundNextActionDisplayDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RefundNextActionDisplayDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RefundNextActionDisplayDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['email_sent'] = (node) => emailSent =
        node.getObjectValue<EmailSent>(EmailSent.createFromDiscriminatorValue);
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<EmailSent>('email_sent', emailSent);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeAdditionalData(additionalData);
  }
}
