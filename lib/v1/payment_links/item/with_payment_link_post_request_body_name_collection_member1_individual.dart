// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithPaymentLinkPostRequestBodyNameCollectionMember1Individual
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The optional property
  bool? optional;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyNameCollectionMember1Individual] and sets the default values.
  WithPaymentLinkPostRequestBodyNameCollectionMember1Individual()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyNameCollectionMember1Individual
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyNameCollectionMember1Individual();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['optional'] = (node) => optional = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeBoolValue('optional', value: optional);
    writer.writeAdditionalData(additionalData);
  }
}
