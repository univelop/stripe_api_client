// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_resource_payment_method_options_resource_card.dart';

/// auto generated
/// Payment-method-specific configuration
class ConfirmationTokensResourcePaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  This hash contains the card payment method options.
  ConfirmationTokensResourcePaymentMethodOptionsResourceCard? card;

  /// Instantiates a new [ConfirmationTokensResourcePaymentMethodOptions] and sets the default values.
  ConfirmationTokensResourcePaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensResourcePaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensResourcePaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card'] = (node) => card = node.getObjectValue<
            ConfirmationTokensResourcePaymentMethodOptionsResourceCard>(
        ConfirmationTokensResourcePaymentMethodOptionsResourceCard
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmationTokensResourcePaymentMethodOptionsResourceCard>(
        'card', card);
    writer.writeAdditionalData(additionalData);
  }
}
