// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_hooks_inputs_tax_calculation.dart';

/// auto generated
class WithIntentPostRequestBodyHooksInputsTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The calculation property
  WithIntentPostRequestBodyHooksInputsTaxCalculation? calculation;

  /// Instantiates a new [WithIntentPostRequestBodyHooksInputsTax] and sets the default values.
  WithIntentPostRequestBodyHooksInputsTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyHooksInputsTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithIntentPostRequestBodyHooksInputsTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['calculation'] = (node) => calculation =
        node.getObjectValue<WithIntentPostRequestBodyHooksInputsTaxCalculation>(
            WithIntentPostRequestBodyHooksInputsTaxCalculation
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithIntentPostRequestBodyHooksInputsTaxCalculation>(
        'calculation', calculation);
    writer.writeAdditionalData(additionalData);
  }
}
