// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Custom Payment Methods represent Payment Method types not modeled directly inthe Stripe API. This resource consists of details about the custom payment methodused for this payment attempt.
class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Display name for the custom (user-defined) payment method type used to make this payment.
  String? displayName;

  ///  The custom payment method type associated with this payment.
  String? type_;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCustomDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
