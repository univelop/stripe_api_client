// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingCardholderUserTermsAcceptance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Unix timestamp marking when the cardholder accepted the Authorized User Terms.
  int? date;

  ///  The IP address from which the cardholder accepted the Authorized User Terms.
  String? ip;

  ///  The user agent of the browser from which the cardholder accepted the Authorized User Terms.
  String? userAgent;

  /// Instantiates a new [IssuingCardholderUserTermsAcceptance] and sets the default values.
  IssuingCardholderUserTermsAcceptance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardholderUserTermsAcceptance createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardholderUserTermsAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['date'] = (node) => date = node.getIntValue();
    deserializerMap['ip'] = (node) => ip = node.getStringValue();
    deserializerMap['user_agent'] = (node) => userAgent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('date', date);
    writer.writeStringValue('ip', ip);
    writer.writeStringValue('user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
