// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class EphemeralKeysPostRequestBody implements Parsable {
  ///  The ID of the Customer you'd like to modify using the resulting ephemeral key.
  String? customer;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The ID of the Issuing Card you'd like to access using the resulting ephemeral key.
  String? issuingCard;

  ///  A single-use token, created by Stripe.js, used for creating ephemeral keys for Issuing Cards without exchanging sensitive information.
  String? nonce;

  ///  The ID of the Identity VerificationSession you'd like to access using the resulting ephemeral key
  String? verificationSession;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static EphemeralKeysPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return EphemeralKeysPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['issuing_card'] =
        (node) => issuingCard = node.getStringValue();
    deserializerMap['nonce'] = (node) => nonce = node.getStringValue();
    deserializerMap['verification_session'] =
        (node) => verificationSession = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('customer', customer);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('issuing_card', issuingCard);
    writer.writeStringValue('nonce', nonce);
    writer.writeStringValue('verification_session', verificationSession);
  }
}
