{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfig exposing (IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfig, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfigDecoder, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfigEncoder)

import Byte exposing (Byte, byteDecoder, byteEncoder)
import Data.IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ServiceReference exposing (IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ServiceReference, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ServiceReferenceDecoder, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ServiceReferenceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   WebhookClientConfig contains the information to make a TLS connection with the webhook. It has the same field as admissionregistration.v1beta1.WebhookClientConfig.
-}


type alias IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfig =
    { caBundle : Maybe Byte
    , service : Maybe IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ServiceReference
    , url : Maybe String
    }


ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfigDecoder : Decoder IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfig
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfigDecoder =
    decode IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfig
        |> optional "caBundle" (Decode.nullable byteDecoder) Nothing
        |> optional "service" (Decode.nullable ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ServiceReferenceDecoder) Nothing
        |> optional "url" (Decode.nullable Decode.string) Nothing



ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfigEncoder : IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfig -> Encode.Value
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1WebhookClientConfigEncoder model =
    Encode.object
        [ ( "caBundle", withDefault Encode.null (map byteEncoder model.caBundle) )
        , ( "service", withDefault Encode.null (map ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ServiceReferenceEncoder model.service) )
        , ( "url", withDefault Encode.null (map Encode.string model.url) )
        ]


