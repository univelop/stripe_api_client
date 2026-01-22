// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_payto_mandate_options.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsPayto
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions? mandateOptions;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsPayto] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsPayto() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsPayto
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsPayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mandate_options'] = (node) => mandateOptions =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions>(
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaytoMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeAdditionalData(additionalData);
  }
}
