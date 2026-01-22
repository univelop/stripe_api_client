// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_sessions_post_request_body_components_buy_button.dart';
import './customer_sessions_post_request_body_components_customer_sheet.dart';
import './customer_sessions_post_request_body_components_mobile_payment_element.dart';
import './customer_sessions_post_request_body_components_payment_element.dart';
import './customer_sessions_post_request_body_components_pricing_table.dart';

/// auto generated
/// Configuration for each component. At least 1 component must be enabled.
class CustomerSessionsPostRequestBodyComponents
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The buy_button property
  CustomerSessionsPostRequestBodyComponentsBuyButton? buyButton;

  ///  The customer_sheet property
  CustomerSessionsPostRequestBodyComponentsCustomerSheet? customerSheet;

  ///  The mobile_payment_element property
  CustomerSessionsPostRequestBodyComponentsMobilePaymentElement?
      mobilePaymentElement;

  ///  The payment_element property
  CustomerSessionsPostRequestBodyComponentsPaymentElement? paymentElement;

  ///  The pricing_table property
  CustomerSessionsPostRequestBodyComponentsPricingTable? pricingTable;

  /// Instantiates a new [CustomerSessionsPostRequestBodyComponents] and sets the default values.
  CustomerSessionsPostRequestBodyComponents() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionsPostRequestBodyComponents createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomerSessionsPostRequestBodyComponents();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['buy_button'] = (node) => buyButton =
        node.getObjectValue<CustomerSessionsPostRequestBodyComponentsBuyButton>(
            CustomerSessionsPostRequestBodyComponentsBuyButton
                .createFromDiscriminatorValue);
    deserializerMap['customer_sheet'] = (node) => customerSheet = node
        .getObjectValue<CustomerSessionsPostRequestBodyComponentsCustomerSheet>(
            CustomerSessionsPostRequestBodyComponentsCustomerSheet
                .createFromDiscriminatorValue);
    deserializerMap['mobile_payment_element'] = (node) => mobilePaymentElement =
        node.getObjectValue<
                CustomerSessionsPostRequestBodyComponentsMobilePaymentElement>(
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElement
                .createFromDiscriminatorValue);
    deserializerMap['payment_element'] = (node) => paymentElement =
        node.getObjectValue<
                CustomerSessionsPostRequestBodyComponentsPaymentElement>(
            CustomerSessionsPostRequestBodyComponentsPaymentElement
                .createFromDiscriminatorValue);
    deserializerMap['pricing_table'] = (node) => pricingTable = node
        .getObjectValue<CustomerSessionsPostRequestBodyComponentsPricingTable>(
            CustomerSessionsPostRequestBodyComponentsPricingTable
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CustomerSessionsPostRequestBodyComponentsBuyButton>(
        'buy_button', buyButton);
    writer.writeObjectValue<
            CustomerSessionsPostRequestBodyComponentsCustomerSheet>(
        'customer_sheet', customerSheet);
    writer.writeObjectValue<
            CustomerSessionsPostRequestBodyComponentsMobilePaymentElement>(
        'mobile_payment_element', mobilePaymentElement);
    writer.writeObjectValue<
            CustomerSessionsPostRequestBodyComponentsPaymentElement>(
        'payment_element', paymentElement);
    writer.writeObjectValue<
            CustomerSessionsPostRequestBodyComponentsPricingTable>(
        'pricing_table', pricingTable);
    writer.writeAdditionalData(additionalData);
  }
}
