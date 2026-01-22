// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingTransactionFleetCardholderPromptData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Driver ID.
  String? driverId;

  ///  Odometer reading.
  int? odometer;

  ///  An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
  String? unspecifiedId;

  ///  User ID.
  String? userId;

  ///  Vehicle number.
  String? vehicleNumber;

  /// Instantiates a new [IssuingTransactionFleetCardholderPromptData] and sets the default values.
  IssuingTransactionFleetCardholderPromptData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionFleetCardholderPromptData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingTransactionFleetCardholderPromptData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['driver_id'] = (node) => driverId = node.getStringValue();
    deserializerMap['odometer'] = (node) => odometer = node.getIntValue();
    deserializerMap['unspecified_id'] =
        (node) => unspecifiedId = node.getStringValue();
    deserializerMap['user_id'] = (node) => userId = node.getStringValue();
    deserializerMap['vehicle_number'] =
        (node) => vehicleNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('driver_id', driverId);
    writer.writeIntValue('odometer', odometer);
    writer.writeStringValue('unspecified_id', unspecifiedId);
    writer.writeStringValue('user_id', userId);
    writer.writeStringValue('vehicle_number', vehicleNumber);
    writer.writeAdditionalData(additionalData);
  }
}
