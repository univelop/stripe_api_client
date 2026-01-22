// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_customer_update.dart';
import './with_configuration_post_request_body_features_invoice_history.dart';
import './with_configuration_post_request_body_features_payment_method_update.dart';
import './with_configuration_post_request_body_features_subscription_cancel.dart';
import './with_configuration_post_request_body_features_subscription_update.dart';

/// auto generated
/// Information about the features available in the portal.
class WithConfigurationPostRequestBodyFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_update property
  WithConfigurationPostRequestBodyFeaturesCustomerUpdate? customerUpdate;

  ///  The invoice_history property
  WithConfigurationPostRequestBodyFeaturesInvoiceHistory? invoiceHistory;

  ///  The payment_method_update property
  WithConfigurationPostRequestBodyFeaturesPaymentMethodUpdate?
      paymentMethodUpdate;

  ///  The subscription_cancel property
  WithConfigurationPostRequestBodyFeaturesSubscriptionCancel?
      subscriptionCancel;

  ///  The subscription_update property
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate?
      subscriptionUpdate;

  /// Instantiates a new [WithConfigurationPostRequestBodyFeatures] and sets the default values.
  WithConfigurationPostRequestBodyFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithConfigurationPostRequestBodyFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_update'] = (node) => customerUpdate = node
        .getObjectValue<WithConfigurationPostRequestBodyFeaturesCustomerUpdate>(
            WithConfigurationPostRequestBodyFeaturesCustomerUpdate
                .createFromDiscriminatorValue);
    deserializerMap['invoice_history'] = (node) => invoiceHistory = node
        .getObjectValue<WithConfigurationPostRequestBodyFeaturesInvoiceHistory>(
            WithConfigurationPostRequestBodyFeaturesInvoiceHistory
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_update'] = (node) => paymentMethodUpdate =
        node.getObjectValue<
                WithConfigurationPostRequestBodyFeaturesPaymentMethodUpdate>(
            WithConfigurationPostRequestBodyFeaturesPaymentMethodUpdate
                .createFromDiscriminatorValue);
    deserializerMap['subscription_cancel'] = (node) => subscriptionCancel =
        node.getObjectValue<
                WithConfigurationPostRequestBodyFeaturesSubscriptionCancel>(
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancel
                .createFromDiscriminatorValue);
    deserializerMap['subscription_update'] = (node) => subscriptionUpdate =
        node.getObjectValue<
                WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate>(
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesCustomerUpdate>(
        'customer_update', customerUpdate);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesInvoiceHistory>(
        'invoice_history', invoiceHistory);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesPaymentMethodUpdate>(
        'payment_method_update', paymentMethodUpdate);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionCancel>(
        'subscription_cancel', subscriptionCancel);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate>(
        'subscription_update', subscriptionUpdate);
    writer.writeAdditionalData(additionalData);
  }
}
