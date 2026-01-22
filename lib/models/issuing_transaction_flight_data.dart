// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_transaction_flight_data_leg.dart';

/// auto generated
class IssuingTransactionFlightData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The time that the flight departed.
  int? departureAt;

  ///  The name of the passenger.
  String? passengerName;

  ///  Whether the ticket is refundable.
  bool? refundable;

  ///  The legs of the trip.
  Iterable<IssuingTransactionFlightDataLeg>? segments;

  ///  The travel agency that issued the ticket.
  String? travelAgency;

  /// Instantiates a new [IssuingTransactionFlightData] and sets the default values.
  IssuingTransactionFlightData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionFlightData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionFlightData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['departure_at'] =
        (node) => departureAt = node.getIntValue();
    deserializerMap['passenger_name'] =
        (node) => passengerName = node.getStringValue();
    deserializerMap['refundable'] = (node) => refundable = node.getBoolValue();
    deserializerMap['segments'] = (node) => segments =
        node.getCollectionOfObjectValues<IssuingTransactionFlightDataLeg>(
            IssuingTransactionFlightDataLeg.createFromDiscriminatorValue);
    deserializerMap['travel_agency'] =
        (node) => travelAgency = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('departure_at', departureAt);
    writer.writeStringValue('passenger_name', passengerName);
    writer.writeBoolValue('refundable', value: refundable);
    writer.writeCollectionOfObjectValues<IssuingTransactionFlightDataLeg>(
        'segments', segments);
    writer.writeStringValue('travel_agency', travelAgency);
    writer.writeAdditionalData(additionalData);
  }
}
