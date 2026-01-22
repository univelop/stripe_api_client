// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './increment_authorization_post_request_body_hooks_inputs_tax_calculation.dart';

/// auto generated
class IncrementAuthorizationPostRequestBodyHooksInputsTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The calculation property
  IncrementAuthorizationPostRequestBodyHooksInputsTaxCalculation? calculation;

  /// Instantiates a new [IncrementAuthorizationPostRequestBodyHooksInputsTax] and sets the default values.
  IncrementAuthorizationPostRequestBodyHooksInputsTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IncrementAuthorizationPostRequestBodyHooksInputsTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IncrementAuthorizationPostRequestBodyHooksInputsTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['calculation'] = (node) => calculation =
        node.getObjectValue<
                IncrementAuthorizationPostRequestBodyHooksInputsTaxCalculation>(
            IncrementAuthorizationPostRequestBodyHooksInputsTaxCalculation
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            IncrementAuthorizationPostRequestBodyHooksInputsTaxCalculation>(
        'calculation', calculation);
    writer.writeAdditionalData(additionalData);
  }
}
