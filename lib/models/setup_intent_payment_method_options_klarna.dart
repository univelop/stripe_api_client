// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SetupIntentPaymentMethodOptionsKlarna
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency of the setup intent. Three letter ISO currency code.
  String? currency;

  ///  Preferred locale of the Klarna checkout page that the customer is redirected to.
  String? preferredLocale;

  /// Instantiates a new [SetupIntentPaymentMethodOptionsKlarna] and sets the default values.
  SetupIntentPaymentMethodOptionsKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptionsKlarna createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupIntentPaymentMethodOptionsKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['preferred_locale'] =
        (node) => preferredLocale = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('preferred_locale', preferredLocale);
    writer.writeAdditionalData(additionalData);
  }
}
