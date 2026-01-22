// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SetupIntentPaymentMethodOptionsMandateOptionsSepaDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
  String? referencePrefix;

  /// Instantiates a new [SetupIntentPaymentMethodOptionsMandateOptionsSepaDebit] and sets the default values.
  SetupIntentPaymentMethodOptionsMandateOptionsSepaDebit()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptionsMandateOptionsSepaDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentPaymentMethodOptionsMandateOptionsSepaDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['reference_prefix'] =
        (node) => referencePrefix = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('reference_prefix', referencePrefix);
    writer.writeAdditionalData(additionalData);
  }
}
