// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeKlarna implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The background_image_url property
  String? backgroundImageUrl;

  ///  The client_token property
  String? clientToken;

  ///  The first_name property
  String? firstName;

  ///  The last_name property
  String? lastName;

  ///  The locale property
  String? locale;

  ///  The logo_url property
  String? logoUrl;

  ///  The page_title property
  String? pageTitle;

  ///  The pay_later_asset_urls_descriptive property
  String? payLaterAssetUrlsDescriptive;

  ///  The pay_later_asset_urls_standard property
  String? payLaterAssetUrlsStandard;

  ///  The pay_later_name property
  String? payLaterName;

  ///  The pay_later_redirect_url property
  String? payLaterRedirectUrl;

  ///  The payment_method_categories property
  String? paymentMethodCategories;

  ///  The pay_now_asset_urls_descriptive property
  String? payNowAssetUrlsDescriptive;

  ///  The pay_now_asset_urls_standard property
  String? payNowAssetUrlsStandard;

  ///  The pay_now_name property
  String? payNowName;

  ///  The pay_now_redirect_url property
  String? payNowRedirectUrl;

  ///  The pay_over_time_asset_urls_descriptive property
  String? payOverTimeAssetUrlsDescriptive;

  ///  The pay_over_time_asset_urls_standard property
  String? payOverTimeAssetUrlsStandard;

  ///  The pay_over_time_name property
  String? payOverTimeName;

  ///  The pay_over_time_redirect_url property
  String? payOverTimeRedirectUrl;

  ///  The purchase_country property
  String? purchaseCountry;

  ///  The purchase_type property
  String? purchaseType;

  ///  The redirect_url property
  String? redirectUrl;

  ///  The shipping_delay property
  int? shippingDelay;

  ///  The shipping_first_name property
  String? shippingFirstName;

  ///  The shipping_last_name property
  String? shippingLastName;

  /// Instantiates a new [SourceTypeKlarna] and sets the default values.
  SourceTypeKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeKlarna createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceTypeKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['background_image_url'] =
        (node) => backgroundImageUrl = node.getStringValue();
    deserializerMap['client_token'] =
        (node) => clientToken = node.getStringValue();
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['locale'] = (node) => locale = node.getStringValue();
    deserializerMap['logo_url'] = (node) => logoUrl = node.getStringValue();
    deserializerMap['page_title'] = (node) => pageTitle = node.getStringValue();
    deserializerMap['pay_later_asset_urls_descriptive'] =
        (node) => payLaterAssetUrlsDescriptive = node.getStringValue();
    deserializerMap['pay_later_asset_urls_standard'] =
        (node) => payLaterAssetUrlsStandard = node.getStringValue();
    deserializerMap['pay_later_name'] =
        (node) => payLaterName = node.getStringValue();
    deserializerMap['pay_later_redirect_url'] =
        (node) => payLaterRedirectUrl = node.getStringValue();
    deserializerMap['payment_method_categories'] =
        (node) => paymentMethodCategories = node.getStringValue();
    deserializerMap['pay_now_asset_urls_descriptive'] =
        (node) => payNowAssetUrlsDescriptive = node.getStringValue();
    deserializerMap['pay_now_asset_urls_standard'] =
        (node) => payNowAssetUrlsStandard = node.getStringValue();
    deserializerMap['pay_now_name'] =
        (node) => payNowName = node.getStringValue();
    deserializerMap['pay_now_redirect_url'] =
        (node) => payNowRedirectUrl = node.getStringValue();
    deserializerMap['pay_over_time_asset_urls_descriptive'] =
        (node) => payOverTimeAssetUrlsDescriptive = node.getStringValue();
    deserializerMap['pay_over_time_asset_urls_standard'] =
        (node) => payOverTimeAssetUrlsStandard = node.getStringValue();
    deserializerMap['pay_over_time_name'] =
        (node) => payOverTimeName = node.getStringValue();
    deserializerMap['pay_over_time_redirect_url'] =
        (node) => payOverTimeRedirectUrl = node.getStringValue();
    deserializerMap['purchase_country'] =
        (node) => purchaseCountry = node.getStringValue();
    deserializerMap['purchase_type'] =
        (node) => purchaseType = node.getStringValue();
    deserializerMap['redirect_url'] =
        (node) => redirectUrl = node.getStringValue();
    deserializerMap['shipping_delay'] =
        (node) => shippingDelay = node.getIntValue();
    deserializerMap['shipping_first_name'] =
        (node) => shippingFirstName = node.getStringValue();
    deserializerMap['shipping_last_name'] =
        (node) => shippingLastName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('background_image_url', backgroundImageUrl);
    writer.writeStringValue('client_token', clientToken);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('last_name', lastName);
    writer.writeStringValue('locale', locale);
    writer.writeStringValue('logo_url', logoUrl);
    writer.writeStringValue('page_title', pageTitle);
    writer.writeStringValue(
        'pay_later_asset_urls_descriptive', payLaterAssetUrlsDescriptive);
    writer.writeStringValue(
        'pay_later_asset_urls_standard', payLaterAssetUrlsStandard);
    writer.writeStringValue('pay_later_name', payLaterName);
    writer.writeStringValue('pay_later_redirect_url', payLaterRedirectUrl);
    writer.writeStringValue(
        'payment_method_categories', paymentMethodCategories);
    writer.writeStringValue(
        'pay_now_asset_urls_descriptive', payNowAssetUrlsDescriptive);
    writer.writeStringValue(
        'pay_now_asset_urls_standard', payNowAssetUrlsStandard);
    writer.writeStringValue('pay_now_name', payNowName);
    writer.writeStringValue('pay_now_redirect_url', payNowRedirectUrl);
    writer.writeStringValue('pay_over_time_asset_urls_descriptive',
        payOverTimeAssetUrlsDescriptive);
    writer.writeStringValue(
        'pay_over_time_asset_urls_standard', payOverTimeAssetUrlsStandard);
    writer.writeStringValue('pay_over_time_name', payOverTimeName);
    writer.writeStringValue(
        'pay_over_time_redirect_url', payOverTimeRedirectUrl);
    writer.writeStringValue('purchase_country', purchaseCountry);
    writer.writeStringValue('purchase_type', purchaseType);
    writer.writeStringValue('redirect_url', redirectUrl);
    writer.writeIntValue('shipping_delay', shippingDelay);
    writer.writeStringValue('shipping_first_name', shippingFirstName);
    writer.writeStringValue('shipping_last_name', shippingLastName);
    writer.writeAdditionalData(additionalData);
  }
}
