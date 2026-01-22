// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDetailsPaynow implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the [location](https://docs.stripe.com/api/terminal/locations) that this transaction's reader is assigned to.
  String? location;

  ///  ID of the [reader](https://docs.stripe.com/api/terminal/readers) this transaction was made on.
  String? reader;

  ///  Reference number associated with this PayNow payment
  String? reference;

  /// Instantiates a new [PaymentMethodDetailsPaynow] and sets the default values.
  PaymentMethodDetailsPaynow() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsPaynow createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsPaynow();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['location'] = (node) => location = node.getStringValue();
    deserializerMap['reader'] = (node) => reader = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('location', location);
    writer.writeStringValue('reader', reader);
    writer.writeStringValue('reference', reference);
    writer.writeAdditionalData(additionalData);
  }
}
