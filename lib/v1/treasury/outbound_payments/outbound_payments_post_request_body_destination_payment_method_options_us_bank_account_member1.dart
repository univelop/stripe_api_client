// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_payments_post_request_body_destination_payment_method_options_us_bank_account_member1_network.dart';

/// auto generated
class OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The network property
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1Network?
      network;

  /// Instantiates a new [OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1] and sets the default values.
  OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1Network>(
        (stringValue) =>
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1Network
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            OutboundPaymentsPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1Network>(
        'network', network, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
