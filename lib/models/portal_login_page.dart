// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PortalLoginPage implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If `true`, a shareable `url` will be generated that will take your customers to a hosted login page for the customer portal.If `false`, the previously generated `url`, if any, will be deactivated.
  bool? enabled;

  ///  A shareable URL to the hosted portal login page. Your customers will be able to log in with their [email](https://docs.stripe.com/api/customers/object#customer_object-email) and receive a link to their customer portal.
  String? url;

  /// Instantiates a new [PortalLoginPage] and sets the default values.
  PortalLoginPage() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalLoginPage createFromDiscriminatorValue(ParseNode parseNode) {
    return PortalLoginPage();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
