// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_session_resource_components_resource_buy_button.dart';
import './customer_session_resource_components_resource_customer_sheet.dart';
import './customer_session_resource_components_resource_mobile_payment_element.dart';
import './customer_session_resource_components_resource_payment_element.dart';
import './customer_session_resource_components_resource_pricing_table.dart';

/// auto generated
/// Configuration for the components supported by this Customer Session.
class CustomerSessionResourceComponents
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  This hash contains whether the buy button is enabled.
  CustomerSessionResourceComponentsResourceBuyButton? buyButton;

  ///  This hash contains whether the customer sheet is enabled and the features it supports.
  CustomerSessionResourceComponentsResourceCustomerSheet? customerSheet;

  ///  This hash contains whether the mobile payment element is enabled and the features it supports.
  CustomerSessionResourceComponentsResourceMobilePaymentElement?
      mobilePaymentElement;

  ///  This hash contains whether the Payment Element is enabled and the features it supports.
  CustomerSessionResourceComponentsResourcePaymentElement? paymentElement;

  ///  This hash contains whether the pricing table is enabled.
  CustomerSessionResourceComponentsResourcePricingTable? pricingTable;

  /// Instantiates a new [CustomerSessionResourceComponents] and sets the default values.
  CustomerSessionResourceComponents() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionResourceComponents createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomerSessionResourceComponents();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['buy_button'] = (node) => buyButton =
        node.getObjectValue<CustomerSessionResourceComponentsResourceBuyButton>(
            CustomerSessionResourceComponentsResourceBuyButton
                .createFromDiscriminatorValue);
    deserializerMap['customer_sheet'] = (node) => customerSheet = node
        .getObjectValue<CustomerSessionResourceComponentsResourceCustomerSheet>(
            CustomerSessionResourceComponentsResourceCustomerSheet
                .createFromDiscriminatorValue);
    deserializerMap['mobile_payment_element'] = (node) => mobilePaymentElement =
        node.getObjectValue<
                CustomerSessionResourceComponentsResourceMobilePaymentElement>(
            CustomerSessionResourceComponentsResourceMobilePaymentElement
                .createFromDiscriminatorValue);
    deserializerMap['payment_element'] = (node) => paymentElement =
        node.getObjectValue<
                CustomerSessionResourceComponentsResourcePaymentElement>(
            CustomerSessionResourceComponentsResourcePaymentElement
                .createFromDiscriminatorValue);
    deserializerMap['pricing_table'] = (node) => pricingTable = node
        .getObjectValue<CustomerSessionResourceComponentsResourcePricingTable>(
            CustomerSessionResourceComponentsResourcePricingTable
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CustomerSessionResourceComponentsResourceBuyButton>(
        'buy_button', buyButton);
    writer.writeObjectValue<
            CustomerSessionResourceComponentsResourceCustomerSheet>(
        'customer_sheet', customerSheet);
    writer.writeObjectValue<
            CustomerSessionResourceComponentsResourceMobilePaymentElement>(
        'mobile_payment_element', mobilePaymentElement);
    writer.writeObjectValue<
            CustomerSessionResourceComponentsResourcePaymentElement>(
        'payment_element', paymentElement);
    writer.writeObjectValue<
            CustomerSessionResourceComponentsResourcePricingTable>(
        'pricing_table', pricingTable);
    writer.writeAdditionalData(additionalData);
  }
}
