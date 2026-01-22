// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeThreeDSecure implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address_line1_check property
  String? addressLine1Check;

  ///  The address_zip_check property
  String? addressZipCheck;

  ///  The authenticated property
  bool? authenticated;

  ///  The brand property
  String? brand;

  ///  The card property
  String? card;

  ///  The country property
  String? country;

  ///  The customer property
  String? customer;

  ///  The cvc_check property
  String? cvcCheck;

  ///  The dynamic_last4 property
  String? dynamicLast4;

  ///  The exp_month property
  int? expMonth;

  ///  The exp_year property
  int? expYear;

  ///  The fingerprint property
  String? fingerprint;

  ///  The funding property
  String? funding;

  ///  The last4 property
  String? last4;

  ///  The name property
  String? name;

  ///  The three_d_secure property
  String? threeDSecure;

  ///  The tokenization_method property
  String? tokenizationMethod;

  /// Instantiates a new [SourceTypeThreeDSecure] and sets the default values.
  SourceTypeThreeDSecure() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeThreeDSecure createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTypeThreeDSecure();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address_line1_check'] =
        (node) => addressLine1Check = node.getStringValue();
    deserializerMap['address_zip_check'] =
        (node) => addressZipCheck = node.getStringValue();
    deserializerMap['authenticated'] =
        (node) => authenticated = node.getBoolValue();
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['card'] = (node) => card = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['cvc_check'] = (node) => cvcCheck = node.getStringValue();
    deserializerMap['dynamic_last4'] =
        (node) => dynamicLast4 = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['three_d_secure'] =
        (node) => threeDSecure = node.getStringValue();
    deserializerMap['tokenization_method'] =
        (node) => tokenizationMethod = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('address_line1_check', addressLine1Check);
    writer.writeStringValue('address_zip_check', addressZipCheck);
    writer.writeBoolValue('authenticated', value: authenticated);
    writer.writeStringValue('brand', brand);
    writer.writeStringValue('card', card);
    writer.writeStringValue('country', country);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('cvc_check', cvcCheck);
    writer.writeStringValue('dynamic_last4', dynamicLast4);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding', funding);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('name', name);
    writer.writeStringValue('three_d_secure', threeDSecure);
    writer.writeStringValue('tokenization_method', tokenizationMethod);
    writer.writeAdditionalData(additionalData);
  }
}
