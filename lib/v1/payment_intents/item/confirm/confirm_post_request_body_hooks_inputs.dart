// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_hooks_inputs_tax.dart';

/// auto generated
class ConfirmPostRequestBodyHooksInputs
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tax property
  ConfirmPostRequestBodyHooksInputsTax? tax;

  /// Instantiates a new [ConfirmPostRequestBodyHooksInputs] and sets the default values.
  ConfirmPostRequestBodyHooksInputs() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyHooksInputs createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmPostRequestBodyHooksInputs();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<ConfirmPostRequestBodyHooksInputsTax>(
            ConfirmPostRequestBodyHooksInputsTax.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConfirmPostRequestBodyHooksInputsTax>('tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
