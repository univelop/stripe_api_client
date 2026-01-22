// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_tipping_member1_aed.dart';
import './with_configuration_post_request_body_tipping_member1_aud.dart';
import './with_configuration_post_request_body_tipping_member1_bgn.dart';
import './with_configuration_post_request_body_tipping_member1_cad.dart';
import './with_configuration_post_request_body_tipping_member1_chf.dart';
import './with_configuration_post_request_body_tipping_member1_czk.dart';
import './with_configuration_post_request_body_tipping_member1_dkk.dart';
import './with_configuration_post_request_body_tipping_member1_eur.dart';
import './with_configuration_post_request_body_tipping_member1_gbp.dart';
import './with_configuration_post_request_body_tipping_member1_gip.dart';
import './with_configuration_post_request_body_tipping_member1_hkd.dart';
import './with_configuration_post_request_body_tipping_member1_huf.dart';
import './with_configuration_post_request_body_tipping_member1_jpy.dart';
import './with_configuration_post_request_body_tipping_member1_mxn.dart';
import './with_configuration_post_request_body_tipping_member1_myr.dart';
import './with_configuration_post_request_body_tipping_member1_nok.dart';
import './with_configuration_post_request_body_tipping_member1_nzd.dart';
import './with_configuration_post_request_body_tipping_member1_pln.dart';
import './with_configuration_post_request_body_tipping_member1_ron.dart';
import './with_configuration_post_request_body_tipping_member1_sek.dart';
import './with_configuration_post_request_body_tipping_member1_sgd.dart';
import './with_configuration_post_request_body_tipping_member1_usd.dart';

/// auto generated
class WithConfigurationPostRequestBodyTippingMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The aed property
  WithConfigurationPostRequestBodyTippingMember1Aed? aed;

  ///  The aud property
  WithConfigurationPostRequestBodyTippingMember1Aud? aud;

  ///  The bgn property
  WithConfigurationPostRequestBodyTippingMember1Bgn? bgn;

  ///  The cad property
  WithConfigurationPostRequestBodyTippingMember1Cad? cad;

  ///  The chf property
  WithConfigurationPostRequestBodyTippingMember1Chf? chf;

  ///  The czk property
  WithConfigurationPostRequestBodyTippingMember1Czk? czk;

  ///  The dkk property
  WithConfigurationPostRequestBodyTippingMember1Dkk? dkk;

  ///  The eur property
  WithConfigurationPostRequestBodyTippingMember1Eur? eur;

  ///  The gbp property
  WithConfigurationPostRequestBodyTippingMember1Gbp? gbp;

  ///  The gip property
  WithConfigurationPostRequestBodyTippingMember1Gip? gip;

  ///  The hkd property
  WithConfigurationPostRequestBodyTippingMember1Hkd? hkd;

  ///  The huf property
  WithConfigurationPostRequestBodyTippingMember1Huf? huf;

  ///  The jpy property
  WithConfigurationPostRequestBodyTippingMember1Jpy? jpy;

  ///  The mxn property
  WithConfigurationPostRequestBodyTippingMember1Mxn? mxn;

  ///  The myr property
  WithConfigurationPostRequestBodyTippingMember1Myr? myr;

  ///  The nok property
  WithConfigurationPostRequestBodyTippingMember1Nok? nok;

  ///  The nzd property
  WithConfigurationPostRequestBodyTippingMember1Nzd? nzd;

  ///  The pln property
  WithConfigurationPostRequestBodyTippingMember1Pln? pln;

  ///  The ron property
  WithConfigurationPostRequestBodyTippingMember1Ron? ron;

  ///  The sek property
  WithConfigurationPostRequestBodyTippingMember1Sek? sek;

  ///  The sgd property
  WithConfigurationPostRequestBodyTippingMember1Sgd? sgd;

  ///  The usd property
  WithConfigurationPostRequestBodyTippingMember1Usd? usd;

  /// Instantiates a new [WithConfigurationPostRequestBodyTippingMember1] and sets the default values.
  WithConfigurationPostRequestBodyTippingMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyTippingMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyTippingMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aed'] = (node) => aed =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Aed>(
            WithConfigurationPostRequestBodyTippingMember1Aed
                .createFromDiscriminatorValue);
    deserializerMap['aud'] = (node) => aud =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Aud>(
            WithConfigurationPostRequestBodyTippingMember1Aud
                .createFromDiscriminatorValue);
    deserializerMap['bgn'] = (node) => bgn =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Bgn>(
            WithConfigurationPostRequestBodyTippingMember1Bgn
                .createFromDiscriminatorValue);
    deserializerMap['cad'] = (node) => cad =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Cad>(
            WithConfigurationPostRequestBodyTippingMember1Cad
                .createFromDiscriminatorValue);
    deserializerMap['chf'] = (node) => chf =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Chf>(
            WithConfigurationPostRequestBodyTippingMember1Chf
                .createFromDiscriminatorValue);
    deserializerMap['czk'] = (node) => czk =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Czk>(
            WithConfigurationPostRequestBodyTippingMember1Czk
                .createFromDiscriminatorValue);
    deserializerMap['dkk'] = (node) => dkk =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Dkk>(
            WithConfigurationPostRequestBodyTippingMember1Dkk
                .createFromDiscriminatorValue);
    deserializerMap['eur'] = (node) => eur =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Eur>(
            WithConfigurationPostRequestBodyTippingMember1Eur
                .createFromDiscriminatorValue);
    deserializerMap['gbp'] = (node) => gbp =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Gbp>(
            WithConfigurationPostRequestBodyTippingMember1Gbp
                .createFromDiscriminatorValue);
    deserializerMap['gip'] = (node) => gip =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Gip>(
            WithConfigurationPostRequestBodyTippingMember1Gip
                .createFromDiscriminatorValue);
    deserializerMap['hkd'] = (node) => hkd =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Hkd>(
            WithConfigurationPostRequestBodyTippingMember1Hkd
                .createFromDiscriminatorValue);
    deserializerMap['huf'] = (node) => huf =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Huf>(
            WithConfigurationPostRequestBodyTippingMember1Huf
                .createFromDiscriminatorValue);
    deserializerMap['jpy'] = (node) => jpy =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Jpy>(
            WithConfigurationPostRequestBodyTippingMember1Jpy
                .createFromDiscriminatorValue);
    deserializerMap['mxn'] = (node) => mxn =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Mxn>(
            WithConfigurationPostRequestBodyTippingMember1Mxn
                .createFromDiscriminatorValue);
    deserializerMap['myr'] = (node) => myr =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Myr>(
            WithConfigurationPostRequestBodyTippingMember1Myr
                .createFromDiscriminatorValue);
    deserializerMap['nok'] = (node) => nok =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Nok>(
            WithConfigurationPostRequestBodyTippingMember1Nok
                .createFromDiscriminatorValue);
    deserializerMap['nzd'] = (node) => nzd =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Nzd>(
            WithConfigurationPostRequestBodyTippingMember1Nzd
                .createFromDiscriminatorValue);
    deserializerMap['pln'] = (node) => pln =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Pln>(
            WithConfigurationPostRequestBodyTippingMember1Pln
                .createFromDiscriminatorValue);
    deserializerMap['ron'] = (node) => ron =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Ron>(
            WithConfigurationPostRequestBodyTippingMember1Ron
                .createFromDiscriminatorValue);
    deserializerMap['sek'] = (node) => sek =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Sek>(
            WithConfigurationPostRequestBodyTippingMember1Sek
                .createFromDiscriminatorValue);
    deserializerMap['sgd'] = (node) => sgd =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Sgd>(
            WithConfigurationPostRequestBodyTippingMember1Sgd
                .createFromDiscriminatorValue);
    deserializerMap['usd'] = (node) => usd =
        node.getObjectValue<WithConfigurationPostRequestBodyTippingMember1Usd>(
            WithConfigurationPostRequestBodyTippingMember1Usd
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Aed>(
        'aed', aed);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Aud>(
        'aud', aud);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Bgn>(
        'bgn', bgn);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Cad>(
        'cad', cad);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Chf>(
        'chf', chf);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Czk>(
        'czk', czk);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Dkk>(
        'dkk', dkk);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Eur>(
        'eur', eur);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Gbp>(
        'gbp', gbp);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Gip>(
        'gip', gip);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Hkd>(
        'hkd', hkd);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Huf>(
        'huf', huf);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Jpy>(
        'jpy', jpy);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Mxn>(
        'mxn', mxn);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Myr>(
        'myr', myr);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Nok>(
        'nok', nok);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Nzd>(
        'nzd', nzd);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Pln>(
        'pln', pln);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Ron>(
        'ron', ron);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Sek>(
        'sek', sek);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Sgd>(
        'sgd', sgd);
    writer.writeObjectValue<WithConfigurationPostRequestBodyTippingMember1Usd>(
        'usd', usd);
    writer.writeAdditionalData(additionalData);
  }
}
