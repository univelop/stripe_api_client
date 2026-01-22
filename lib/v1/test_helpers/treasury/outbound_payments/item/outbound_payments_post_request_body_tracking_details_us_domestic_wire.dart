// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The chips property
  String? chips;

  ///  The imad property
  String? imad;

  ///  The omad property
  String? omad;

  /// Instantiates a new [OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire] and sets the default values.
  OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundPaymentsPostRequestBodyTrackingDetailsUsDomesticWire();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['chips'] = (node) => chips = node.getStringValue();
    deserializerMap['imad'] = (node) => imad = node.getStringValue();
    deserializerMap['omad'] = (node) => omad = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('chips', chips);
    writer.writeStringValue('imad', imad);
    writer.writeStringValue('omad', omad);
    writer.writeAdditionalData(additionalData);
  }
}
