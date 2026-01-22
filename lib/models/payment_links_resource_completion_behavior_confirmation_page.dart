// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentLinksResourceCompletionBehaviorConfirmationPage
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom message that is displayed to the customer after the purchase is complete.
  String? customMessage;

  /// Instantiates a new [PaymentLinksResourceCompletionBehaviorConfirmationPage] and sets the default values.
  PaymentLinksResourceCompletionBehaviorConfirmationPage()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceCompletionBehaviorConfirmationPage
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksResourceCompletionBehaviorConfirmationPage();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom_message'] =
        (node) => customMessage = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('custom_message', customMessage);
    writer.writeAdditionalData(additionalData);
  }
}
