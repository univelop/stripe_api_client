// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_options_card_present_capture_method.dart';
import './payment_method_options_card_present_routing.dart';

/// auto generated
class PaymentMethodOptionsCardPresent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  PaymentMethodOptionsCardPresentCaptureMethod? captureMethod;

  ///  Request ability to capture this payment beyond the standard [authorization validity window](https://docs.stripe.com/terminal/features/extended-authorizations#authorization-validity)
  bool? requestExtendedAuthorization;

  ///  Request ability to [increment](https://docs.stripe.com/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://docs.stripe.com/api/payment_intents/confirm) response to verify support.
  bool? requestIncrementalAuthorizationSupport;

  ///  The routing property
  PaymentMethodOptionsCardPresentRouting? routing;

  /// Instantiates a new [PaymentMethodOptionsCardPresent] and sets the default values.
  PaymentMethodOptionsCardPresent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodOptionsCardPresent createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodOptionsCardPresent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<PaymentMethodOptionsCardPresentCaptureMethod>(
            (stringValue) => PaymentMethodOptionsCardPresentCaptureMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_extended_authorization'] =
        (node) => requestExtendedAuthorization = node.getBoolValue();
    deserializerMap['request_incremental_authorization_support'] =
        (node) => requestIncrementalAuthorizationSupport = node.getBoolValue();
    deserializerMap['routing'] = (node) => routing = node.getObjectValue<
            PaymentMethodOptionsCardPresentRouting>(
        PaymentMethodOptionsCardPresentRouting.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodOptionsCardPresentCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeBoolValue('request_extended_authorization',
        value: requestExtendedAuthorization);
    writer.writeBoolValue('request_incremental_authorization_support',
        value: requestIncrementalAuthorizationSupport);
    writer.writeObjectValue<PaymentMethodOptionsCardPresentRouting>(
        'routing', routing);
    writer.writeAdditionalData(additionalData);
  }
}
