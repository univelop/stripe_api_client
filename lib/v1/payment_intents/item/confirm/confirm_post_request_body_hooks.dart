// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_hooks_inputs.dart';

/// auto generated
/// Automations to be run during the PaymentIntent lifecycle
class ConfirmPostRequestBodyHooks implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The inputs property
  ConfirmPostRequestBodyHooksInputs? inputs;

  /// Instantiates a new [ConfirmPostRequestBodyHooks] and sets the default values.
  ConfirmPostRequestBodyHooks() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyHooks createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmPostRequestBodyHooks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['inputs'] = (node) => inputs =
        node.getObjectValue<ConfirmPostRequestBodyHooksInputs>(
            ConfirmPostRequestBodyHooksInputs.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConfirmPostRequestBodyHooksInputs>(
        'inputs', inputs);
    writer.writeAdditionalData(additionalData);
  }
}
