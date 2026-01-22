// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingAuthorizationMerchantData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A categorization of the seller's type of business. See our [merchant categories guide](https://docs.stripe.com/issuing/merchant-categories) for a list of possible values.
  String? category;

  ///  The merchant category code for the seller’s business
  String? categoryCode;

  ///  City where the seller is located
  String? city;

  ///  Country where the seller is located
  String? country;

  ///  Name of the seller
  String? name;

  ///  Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
  String? networkId;

  ///  Postal code where the seller is located
  String? postalCode;

  ///  State where the seller is located
  String? state;

  ///  The seller's tax identification number. Currently populated for French merchants only.
  String? taxId;

  ///  An ID assigned by the seller to the location of the sale.
  String? terminalId;

  ///  URL provided by the merchant on a 3DS request
  String? url;

  /// Instantiates a new [IssuingAuthorizationMerchantData] and sets the default values.
  IssuingAuthorizationMerchantData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationMerchantData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationMerchantData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['category'] = (node) => category = node.getStringValue();
    deserializerMap['category_code'] =
        (node) => categoryCode = node.getStringValue();
    deserializerMap['city'] = (node) => city = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['network_id'] = (node) => networkId = node.getStringValue();
    deserializerMap['postal_code'] =
        (node) => postalCode = node.getStringValue();
    deserializerMap['state'] = (node) => state = node.getStringValue();
    deserializerMap['tax_id'] = (node) => taxId = node.getStringValue();
    deserializerMap['terminal_id'] =
        (node) => terminalId = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('category', category);
    writer.writeStringValue('category_code', categoryCode);
    writer.writeStringValue('city', city);
    writer.writeStringValue('country', country);
    writer.writeStringValue('name', name);
    writer.writeStringValue('network_id', networkId);
    writer.writeStringValue('postal_code', postalCode);
    writer.writeStringValue('state', state);
    writer.writeStringValue('tax_id', taxId);
    writer.writeStringValue('terminal_id', terminalId);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
