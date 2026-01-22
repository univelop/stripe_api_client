// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentLinksResourceIndividualName
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates whether individual name collection is enabled for the payment link.
  bool? enabled;

  ///  Whether the customer is required to complete the field before checking out. Defaults to `false`.
  bool? optional;

  /// Instantiates a new [PaymentLinksResourceIndividualName] and sets the default values.
  PaymentLinksResourceIndividualName() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceIndividualName createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceIndividualName();
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
