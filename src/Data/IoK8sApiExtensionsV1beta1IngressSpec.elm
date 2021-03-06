{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1IngressSpec exposing (IoK8sApiExtensionsV1beta1IngressSpec, ioK8sApiExtensionsV1beta1IngressSpecDecoder, ioK8sApiExtensionsV1beta1IngressSpecEncoder)

import Data.IoK8sApiExtensionsV1beta1IngressBackend exposing (IoK8sApiExtensionsV1beta1IngressBackend, ioK8sApiExtensionsV1beta1IngressBackendDecoder, ioK8sApiExtensionsV1beta1IngressBackendEncoder)
import Data.IoK8sApiExtensionsV1beta1IngressRule exposing (IoK8sApiExtensionsV1beta1IngressRule, ioK8sApiExtensionsV1beta1IngressRuleDecoder, ioK8sApiExtensionsV1beta1IngressRuleEncoder)
import Data.IoK8sApiExtensionsV1beta1IngressTLS exposing (IoK8sApiExtensionsV1beta1IngressTLS, ioK8sApiExtensionsV1beta1IngressTLSDecoder, ioK8sApiExtensionsV1beta1IngressTLSEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   IngressSpec describes the Ingress the user wishes to exist.
-}


type alias IoK8sApiExtensionsV1beta1IngressSpec =
    { backend : Maybe IoK8sApiExtensionsV1beta1IngressBackend
    , rules : Maybe (List IoK8sApiExtensionsV1beta1IngressRule)
    , tls : Maybe (List IoK8sApiExtensionsV1beta1IngressTLS)
    }


ioK8sApiExtensionsV1beta1IngressSpecDecoder : Decoder IoK8sApiExtensionsV1beta1IngressSpec
ioK8sApiExtensionsV1beta1IngressSpecDecoder =
    decode IoK8sApiExtensionsV1beta1IngressSpec
        |> optional "backend" (Decode.nullable ioK8sApiExtensionsV1beta1IngressBackendDecoder) Nothing
        |> optional "rules" (Decode.nullable (Decode.list ioK8sApiExtensionsV1beta1IngressRuleDecoder)) Nothing
        |> optional "tls" (Decode.nullable (Decode.list ioK8sApiExtensionsV1beta1IngressTLSDecoder)) Nothing



ioK8sApiExtensionsV1beta1IngressSpecEncoder : IoK8sApiExtensionsV1beta1IngressSpec -> Encode.Value
ioK8sApiExtensionsV1beta1IngressSpecEncoder model =
    Encode.object
        [ ( "backend", withDefault Encode.null (map ioK8sApiExtensionsV1beta1IngressBackendEncoder model.backend) )
        , ( "rules", withDefault Encode.null (map (Encode.list << List.map ioK8sApiExtensionsV1beta1IngressRuleEncoder) model.rules) )
        , ( "tls", withDefault Encode.null (map (Encode.list << List.map ioK8sApiExtensionsV1beta1IngressTLSEncoder) model.tls) )
        ]


