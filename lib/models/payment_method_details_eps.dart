// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_eps_bank.dart';

/// auto generated
class PaymentMethodDetailsEps implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer's bank. Should be one of `arzte_und_apotheker_bank`, `austrian_anadi_bank_ag`, `bank_austria`, `bankhaus_carl_spangler`, `bankhaus_schelhammer_und_schattera_ag`, `bawag_psk_ag`, `bks_bank_ag`, `brull_kallmus_bank_ag`, `btv_vier_lander_bank`, `capital_bank_grawe_gruppe_ag`, `deutsche_bank_ag`, `dolomitenbank`, `easybank_ag`, `erste_bank_und_sparkassen`, `hypo_alpeadriabank_international_ag`, `hypo_noe_lb_fur_niederosterreich_u_wien`, `hypo_oberosterreich_salzburg_steiermark`, `hypo_tirol_bank_ag`, `hypo_vorarlberg_bank_ag`, `hypo_bank_burgenland_aktiengesellschaft`, `marchfelder_bank`, `oberbank_ag`, `raiffeisen_bankengruppe_osterreich`, `schoellerbank_ag`, `sparda_bank_wien`, `volksbank_gruppe`, `volkskreditbank_ag`, or `vr_bank_braunau`.
  PaymentMethodDetailsEpsBank? bank;

  ///  Owner's verified full name. Values are verified or provided by EPS directly(if supported) at the time of authorization or settlement. They cannot be set or mutated.EPS rarely provides this information so the attribute is usually empty.
  String? verifiedName;

  /// Instantiates a new [PaymentMethodDetailsEps] and sets the default values.
  PaymentMethodDetailsEps() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsEps createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsEps();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank'] = (node) => bank =
        node.getEnumValue<PaymentMethodDetailsEpsBank>((stringValue) =>
            PaymentMethodDetailsEpsBank.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['verified_name'] =
        (node) => verifiedName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodDetailsEpsBank>(
        'bank', bank, (e) => e?.value);
    writer.writeStringValue('verified_name', verifiedName);
    writer.writeAdditionalData(additionalData);
  }
}
