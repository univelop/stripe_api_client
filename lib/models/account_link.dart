// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_link_object.dart';

/// auto generated
/// Account Links are the means by which a Connect platform grants a connected account permission to accessStripe-hosted applications, such as Connect Onboarding.Related guide: [Connect Onboarding](https://docs.stripe.com/connect/custom/hosted-onboarding)
class AccountLink implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The timestamp at which this account link will expire.
  int? expiresAt;

  ///  String representing the object's type. Objects of the same type share the same value.
  AccountLinkObject? object;

  ///  The URL for the account link.
  String? url;

  /// Instantiates a new [AccountLink] and sets the default values.
  AccountLink() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountLink createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountLink();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AccountLinkObject>((stringValue) => AccountLinkObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeEnumValue<AccountLinkObject>('object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
