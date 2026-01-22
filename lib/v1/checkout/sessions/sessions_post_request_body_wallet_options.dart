// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_wallet_options_link.dart';

/// auto generated
/// Wallet-specific configuration.
class SessionsPostRequestBodyWalletOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The link property
  SessionsPostRequestBodyWalletOptionsLink? link;

  /// Instantiates a new [SessionsPostRequestBodyWalletOptions] and sets the default values.
  SessionsPostRequestBodyWalletOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyWalletOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyWalletOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['link'] = (node) => link = node.getObjectValue<
            SessionsPostRequestBodyWalletOptionsLink>(
        SessionsPostRequestBodyWalletOptionsLink.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyWalletOptionsLink>(
        'link', link);
    writer.writeAdditionalData(additionalData);
  }
}
