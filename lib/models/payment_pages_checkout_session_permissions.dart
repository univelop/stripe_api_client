// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_pages_checkout_session_permissions_update_shipping_details.dart';

/// auto generated
class PaymentPagesCheckoutSessionPermissions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Determines which entity is allowed to update the shipping details.Default is `client_only`. Stripe Checkout client will automatically update the shipping details. If set to `server_only`, only your server is allowed to update the shipping details.When set to `server_only`, you must add the onShippingDetailsChange event handler when initializing the Stripe Checkout client and manually update the shipping details from your server using the Stripe API.
  PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails?
      updateShippingDetails;

  /// Instantiates a new [PaymentPagesCheckoutSessionPermissions] and sets the default values.
  PaymentPagesCheckoutSessionPermissions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionPermissions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentPagesCheckoutSessionPermissions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['update_shipping_details'] = (node) =>
        updateShippingDetails = node.getEnumValue<
                PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails>(
            (stringValue) =>
                PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails
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
            PaymentPagesCheckoutSessionPermissionsUpdateShippingDetails>(
        'update_shipping_details', updateShippingDetails, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
