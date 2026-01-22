// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_hooks_inputs_tax.dart';

/// auto generated
class WithIntentPostRequestBodyHooksInputs
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The tax property
  WithIntentPostRequestBodyHooksInputsTax? tax;

  /// Instantiates a new [WithIntentPostRequestBodyHooksInputs] and sets the default values.
  WithIntentPostRequestBodyHooksInputs() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyHooksInputs createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithIntentPostRequestBodyHooksInputs();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['tax'] = (node) => tax = node.getObjectValue<
            WithIntentPostRequestBodyHooksInputsTax>(
        WithIntentPostRequestBodyHooksInputsTax.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithIntentPostRequestBodyHooksInputsTax>(
        'tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
