// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_session_object.dart';
import './connect_embedded_account_session_create_components.dart';

/// auto generated
/// An AccountSession allows a Connect platform to grant access to a connected account in Connect embedded components.We recommend that you create an AccountSession each time you need to display an embedded componentto your user. Do not save AccountSessions to your database as they expire relativelyquickly, and cannot be used more than once.Related guide: [Connect embedded components](https://docs.stripe.com/connect/get-started-connect-embedded-components)
class AccountSession implements AdditionalDataHolder, Parsable {
  ///  The ID of the account the AccountSession was created for
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The client secret of this AccountSession. Used on the client to set up secure access to the given `account`.The client secret can be used to provide access to `account` from your frontend. It should not be stored, logged, or exposed to anyone other than the connected account. Make sure that you have TLS enabled on any page that includes the client secret.Refer to our docs to [setup Connect embedded components](https://docs.stripe.com/connect/get-started-connect-embedded-components) and learn about how `client_secret` should be handled.
  String? clientSecret;

  ///  The components property
  ConnectEmbeddedAccountSessionCreateComponents? components;

  ///  The timestamp at which this AccountSession will expire.
  int? expiresAt;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  AccountSessionObject? object;

  /// Instantiates a new [AccountSession] and sets the default values.
  AccountSession() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSession createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountSession();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['components'] = (node) => components =
        node.getObjectValue<ConnectEmbeddedAccountSessionCreateComponents>(
            ConnectEmbeddedAccountSessionCreateComponents
                .createFromDiscriminatorValue);
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AccountSessionObject>((stringValue) =>
            AccountSessionObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeObjectValue<ConnectEmbeddedAccountSessionCreateComponents>(
        'components', components);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<AccountSessionObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
