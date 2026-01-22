// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  CHIPS System Sequence Number (SSN) of the OutboundPayment for payments sent over the `us_domestic_wire` network.
  String? chips;

  ///  IMAD of the OutboundPayment for payments sent over the `us_domestic_wire` network.
  String? imad;

  ///  OMAD of the OutboundPayment for payments sent over the `us_domestic_wire` network.
  String? omad;

  /// Instantiates a new [TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails] and sets the default values.
  TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails();
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
