// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  IP address of the user initiating the OutboundPayment. Set if `present` is set to `true`. IP address collection is required for risk and compliance reasons. This will be used to help determine if the OutboundPayment is authorized or should be blocked.
  String? ipAddress;

  ///  `true` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
  bool? present;

  /// Instantiates a new [TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails] and sets the default values.
  TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['present'] = (node) => present = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeBoolValue('present', value: present);
    writer.writeAdditionalData(additionalData);
  }
}
