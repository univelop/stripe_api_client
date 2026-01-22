// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// This hash contains details about the online acceptance.
class ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The IP address from which the Mandate was accepted by the customer.
  String? ipAddress;

  ///  The user agent of the browser from which the Mandate was accepted by the customer.
  String? userAgent;

  /// Instantiates a new [ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline] and sets the default values.
  ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['user_agent'] = (node) => userAgent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeStringValue('user_agent', userAgent);
    writer.writeAdditionalData(additionalData);
  }
}
