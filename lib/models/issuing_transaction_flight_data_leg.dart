// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingTransactionFlightDataLeg
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The three-letter IATA airport code of the flight's destination.
  String? arrivalAirportCode;

  ///  The airline carrier code.
  String? carrier;

  ///  The three-letter IATA airport code that the flight departed from.
  String? departureAirportCode;

  ///  The flight number.
  String? flightNumber;

  ///  The flight's service class.
  String? serviceClass;

  ///  Whether a stopover is allowed on this flight.
  bool? stopoverAllowed;

  /// Instantiates a new [IssuingTransactionFlightDataLeg] and sets the default values.
  IssuingTransactionFlightDataLeg() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionFlightDataLeg createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionFlightDataLeg();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['arrival_airport_code'] =
        (node) => arrivalAirportCode = node.getStringValue();
    deserializerMap['carrier'] = (node) => carrier = node.getStringValue();
    deserializerMap['departure_airport_code'] =
        (node) => departureAirportCode = node.getStringValue();
    deserializerMap['flight_number'] =
        (node) => flightNumber = node.getStringValue();
    deserializerMap['service_class'] =
        (node) => serviceClass = node.getStringValue();
    deserializerMap['stopover_allowed'] =
        (node) => stopoverAllowed = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('arrival_airport_code', arrivalAirportCode);
    writer.writeStringValue('carrier', carrier);
    writer.writeStringValue('departure_airport_code', departureAirportCode);
    writer.writeStringValue('flight_number', flightNumber);
    writer.writeStringValue('service_class', serviceClass);
    writer.writeBoolValue('stopover_allowed', value: stopoverAllowed);
    writer.writeAdditionalData(additionalData);
  }
}
