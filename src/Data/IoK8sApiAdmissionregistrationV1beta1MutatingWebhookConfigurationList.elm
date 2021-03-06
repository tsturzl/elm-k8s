{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationList exposing (IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationList, ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationListDecoder, ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationListEncoder)

import Data.IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfiguration exposing (IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfiguration, ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationDecoder, ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   MutatingWebhookConfigurationList is a list of MutatingWebhookConfiguration.
-}


type alias IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfiguration)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationListDecoder : Decoder IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationList
ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationListDecoder =
    decode IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationListEncoder : IoK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationList -> Encode.Value
ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiAdmissionregistrationV1beta1MutatingWebhookConfigurationEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


