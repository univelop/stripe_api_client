// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CreateForceCapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The driver_id property
  String? driverId;

  ///  The odometer property
  int? odometer;

  ///  The unspecified_id property
  String? unspecifiedId;

  ///  The user_id property
  String? userId;

  ///  The vehicle_number property
  String? vehicleNumber;

  /// Instantiates a new [CreateForceCapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData] and sets the default values.
  CreateForceCapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateForceCapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateForceCapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData();
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
