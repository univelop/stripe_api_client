// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_customer_update.dart';
import './configurations_post_request_body_features_invoice_history.dart';
import './configurations_post_request_body_features_payment_method_update.dart';
import './configurations_post_request_body_features_subscription_cancel.dart';
import './configurations_post_request_body_features_subscription_update.dart';

/// auto generated
/// Information about the features available in the portal.
class ConfigurationsPostRequestBodyFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_update property
  ConfigurationsPostRequestBodyFeaturesCustomerUpdate? customerUpdate;

  ///  The invoice_history property
  ConfigurationsPostRequestBodyFeaturesInvoiceHistory? invoiceHistory;

  ///  The payment_method_update property
  ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate? paymentMethodUpdate;

  ///  The subscription_cancel property
  ConfigurationsPostRequestBodyFeaturesSubscriptionCancel? subscriptionCancel;

  ///  The subscription_update property
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate? subscriptionUpdate;

  /// Instantiates a new [ConfigurationsPostRequestBodyFeatures] and sets the default values.
  ConfigurationsPostRequestBodyFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfigurationsPostRequestBodyFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_update'] = (node) => customerUpdate = node
        .getObjectValue<ConfigurationsPostRequestBodyFeaturesCustomerUpdate>(
            ConfigurationsPostRequestBodyFeaturesCustomerUpdate
                .createFromDiscriminatorValue);
    deserializerMap['invoice_history'] = (node) => invoiceHistory = node
        .getObjectValue<ConfigurationsPostRequestBodyFeaturesInvoiceHistory>(
            ConfigurationsPostRequestBodyFeaturesInvoiceHistory
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_update'] = (node) => paymentMethodUpdate =
        node.getObjectValue<
                ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate>(
            ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate
                .createFromDiscriminatorValue);
    deserializerMap['subscription_cancel'] = (node) => subscriptionCancel =
        node.getObjectValue<
                ConfigurationsPostRequestBodyFeaturesSubscriptionCancel>(
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancel
                .createFromDiscriminatorValue);
    deserializerMap['subscription_update'] = (node) => subscriptionUpdate =
        node.getObjectValue<
                ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate>(
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<ConfigurationsPostRequestBodyFeaturesCustomerUpdate>(
            'customer_update', customerUpdate);
    writer
        .writeObjectValue<ConfigurationsPostRequestBodyFeaturesInvoiceHistory>(
            'invoice_history', invoiceHistory);
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesPaymentMethodUpdate>(
        'payment_method_update', paymentMethodUpdate);
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionCancel>(
        'subscription_cancel', subscriptionCancel);
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate>(
        'subscription_update', subscriptionUpdate);
    writer.writeAdditionalData(additionalData);
  }
}
