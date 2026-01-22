// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payments_primitives_payment_records_resource_address.dart';

/// auto generated
/// The customer's shipping information associated with this payment.
class PaymentsPrimitivesPaymentRecordsResourceShippingDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A representation of a physical address.
  PaymentsPrimitivesPaymentRecordsResourceAddress? address;

  ///  The shipping recipient's name.
  String? name;

  ///  The shipping recipient's phone number.
  String? phone;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourceShippingDetails] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourceShippingDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourceShippingDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourceShippingDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<PaymentsPrimitivesPaymentRecordsResourceAddress>(
            PaymentsPrimitivesPaymentRecordsResourceAddress
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentsPrimitivesPaymentRecordsResourceAddress>(
        'address', address);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
