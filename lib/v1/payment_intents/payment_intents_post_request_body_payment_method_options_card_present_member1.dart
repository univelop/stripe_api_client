// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_card_present_member1_capture_method.dart';
import './payment_intents_post_request_body_payment_method_options_card_present_member1_routing.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1CaptureMethod?
      captureMethod;

  ///  The request_extended_authorization property
  bool? requestExtendedAuthorization;

  ///  The request_incremental_authorization_support property
  bool? requestIncrementalAuthorizationSupport;

  ///  The routing property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing?
      routing;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1CaptureMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_extended_authorization'] =
        (node) => requestExtendedAuthorization = node.getBoolValue();
    deserializerMap['request_incremental_authorization_support'] =
        (node) => requestIncrementalAuthorizationSupport = node.getBoolValue();
    deserializerMap['routing'] = (node) => routing = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeBoolValue('request_extended_authorization',
        value: requestExtendedAuthorization);
    writer.writeBoolValue('request_incremental_authorization_support',
        value: requestIncrementalAuthorizationSupport);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing>(
        'routing', routing);
    writer.writeAdditionalData(additionalData);
  }
}
