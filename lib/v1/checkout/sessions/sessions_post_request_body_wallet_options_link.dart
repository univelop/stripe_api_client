// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_wallet_options_link_display.dart';

/// auto generated
class SessionsPostRequestBodyWalletOptionsLink
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display property
  SessionsPostRequestBodyWalletOptionsLinkDisplay? display;

  /// Instantiates a new [SessionsPostRequestBodyWalletOptionsLink] and sets the default values.
  SessionsPostRequestBodyWalletOptionsLink() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyWalletOptionsLink createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyWalletOptionsLink();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display'] = (node) => display =
        node.getEnumValue<SessionsPostRequestBodyWalletOptionsLinkDisplay>(
            (stringValue) => SessionsPostRequestBodyWalletOptionsLinkDisplay
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<SessionsPostRequestBodyWalletOptionsLinkDisplay>(
        'display', display, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
