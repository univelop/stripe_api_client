// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_p24_bank.dart';

/// auto generated
class PaymentMethodDetailsP24 implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer's bank. Can be one of `ing`, `citi_handlowy`, `tmobile_usbugi_bankowe`, `plus_bank`, `etransfer_pocztowy24`, `banki_spbdzielcze`, `bank_nowy_bfg_sa`, `getin_bank`, `velobank`, `blik`, `noble_pay`, `ideabank`, `envelobank`, `santander_przelew24`, `nest_przelew`, `mbank_mtransfer`, `inteligo`, `pbac_z_ipko`, `bnp_paribas`, `credit_agricole`, `toyota_bank`, `bank_pekao_sa`, `volkswagen_bank`, `bank_millennium`, `alior_bank`, or `boz`.
  PaymentMethodDetailsP24Bank? bank;

  ///  Unique reference for this Przelewy24 payment.
  String? reference;

  ///  Owner's verified full name. Values are verified or provided by Przelewy24 directly(if supported) at the time of authorization or settlement. They cannot be set or mutated.Przelewy24 rarely provides this information so the attribute is usually empty.
  String? verifiedName;

  /// Instantiates a new [PaymentMethodDetailsP24] and sets the default values.
  PaymentMethodDetailsP24() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsP24 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsP24();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank'] = (node) => bank =
        node.getEnumValue<PaymentMethodDetailsP24Bank>((stringValue) =>
            PaymentMethodDetailsP24Bank.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['verified_name'] =
        (node) => verifiedName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodDetailsP24Bank>(
        'bank', bank, (e) => e?.value);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('verified_name', verifiedName);
    writer.writeAdditionalData(additionalData);
  }
}
