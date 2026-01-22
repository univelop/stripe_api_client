// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_present_member1_capture_method.dart';
import './confirm_post_request_body_payment_method_options_card_present_member1_routing.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1CaptureMethod?
      captureMethod;

  ///  The request_extended_authorization property
  bool? requestExtendedAuthorization;

  ///  The request_incremental_authorization_support property
  bool? requestIncrementalAuthorizationSupport;

  ///  The routing property
  ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing? routing;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1CaptureMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_extended_authorization'] =
        (node) => requestExtendedAuthorization = node.getBoolValue();
    deserializerMap['request_incremental_authorization_support'] =
        (node) => requestIncrementalAuthorizationSupport = node.getBoolValue();
    deserializerMap['routing'] = (node) => routing = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing>(
        ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeBoolValue('request_extended_authorization',
        value: requestExtendedAuthorization);
    writer.writeBoolValue('request_incremental_authorization_support',
        value: requestIncrementalAuthorizationSupport);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresentMember1Routing>(
        'routing', routing);
    writer.writeAdditionalData(additionalData);
  }
}
