// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './login_link_object.dart';

/// auto generated
/// Login Links are single-use URLs that takes an Express account to the login page for their Stripe dashboard.A Login Link differs from an [Account Link](https://docs.stripe.com/api/account_links) in that it takes the user directly to their [Express dashboard for the specified account](https://docs.stripe.com/connect/integrate-express-dashboard#create-login-link)
class LoginLink implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  String representing the object's type. Objects of the same type share the same value.
  LoginLinkObject? object;

  ///  The URL for the login link.
  String? url;

  /// Instantiates a new [LoginLink] and sets the default values.
  LoginLink() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LoginLink createFromDiscriminatorValue(ParseNode parseNode) {
    return LoginLink();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<LoginLinkObject>((stringValue) => LoginLinkObject.values
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
    writer.writeEnumValue<LoginLinkObject>('object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
