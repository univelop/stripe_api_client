// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report_payment_attempt_informational_post_request_body_shipping_details_member1_address.dart';

/// auto generated
class ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1Address?
      address;

  ///  The name property
  String? name;

  ///  The phone property
  String? phone;

  /// Instantiates a new [ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1] and sets the default values.
  ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1Address>(
        ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1Address
            .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ReportPaymentAttemptInformationalPostRequestBodyShippingDetailsMember1Address>(
        'address', address);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
