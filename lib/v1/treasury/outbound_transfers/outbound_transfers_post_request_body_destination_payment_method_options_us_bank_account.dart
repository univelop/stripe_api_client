// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_transfers_post_request_body_destination_payment_method_options_us_bank_account_member1.dart';

/// auto generated
/// Composed type wrapper for classes [OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1], [String?]
class OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount
    implements Parsable {
  ///  Composed type representation for type [OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1]
  OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1?
      outboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccount();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.outboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1 =
          OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (outboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1 !=
        null) {
      outboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              OutboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1>(
          null,
          outboundTransfersPostRequestBodyDestinationPaymentMethodOptionsUsBankAccountMember1);
    }
  }
}
