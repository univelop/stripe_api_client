// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_hooks_inputs.dart';

/// auto generated
/// Automations to be run during the PaymentIntent lifecycle
class CapturePostRequestBodyHooks implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The inputs property
  CapturePostRequestBodyHooksInputs? inputs;

  /// Instantiates a new [CapturePostRequestBodyHooks] and sets the default values.
  CapturePostRequestBodyHooks() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyHooks createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CapturePostRequestBodyHooks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['inputs'] = (node) => inputs =
        node.getObjectValue<CapturePostRequestBodyHooksInputs>(
            CapturePostRequestBodyHooksInputs.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CapturePostRequestBodyHooksInputs>(
        'inputs', inputs);
    writer.writeAdditionalData(additionalData);
  }
}
