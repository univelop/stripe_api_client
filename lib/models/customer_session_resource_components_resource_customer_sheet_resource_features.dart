// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_session_resource_components_resource_customer_sheet_resource_features_payment_method_allow_redisplay_filters.dart';
import './customer_session_resource_components_resource_customer_sheet_resource_features_payment_method_remove.dart';

/// auto generated
/// This hash contains the features the customer sheet supports.
class CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the customer sheet displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
  Iterable<
          CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters>?
      paymentMethodAllowRedisplayFilters;

  ///  Controls whether the customer sheet displays the option to remove a saved payment method."Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
  CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove?
      paymentMethodRemove;

  /// Instantiates a new [CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures] and sets the default values.
  CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_method_allow_redisplay_filters'] = (node) =>
        paymentMethodAllowRedisplayFilters = node.getCollectionOfEnumValues<
                CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters>(
            (stringValue) =>
                CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'payment_method_remove'] = (node) => paymentMethodRemove = node.getEnumValue<
            CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove>(
        (stringValue) =>
            CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters>(
        'payment_method_allow_redisplay_filters',
        paymentMethodAllowRedisplayFilters,
        (e) => e?.value);
    writer.writeEnumValue<
            CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove>(
        'payment_method_remove', paymentMethodRemove, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
