{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiRbacV1beta1Role exposing (IoK8sApiRbacV1beta1Role, ioK8sApiRbacV1beta1RoleDecoder, ioK8sApiRbacV1beta1RoleEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiRbacV1beta1PolicyRule exposing (IoK8sApiRbacV1beta1PolicyRule, ioK8sApiRbacV1beta1PolicyRuleDecoder, ioK8sApiRbacV1beta1PolicyRuleEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
-}


type alias IoK8sApiRbacV1beta1Role =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , rules : (List IoK8sApiRbacV1beta1PolicyRule)
    }


ioK8sApiRbacV1beta1RoleDecoder : Decoder IoK8sApiRbacV1beta1Role
ioK8sApiRbacV1beta1RoleDecoder =
    decode IoK8sApiRbacV1beta1Role
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> required "rules" (Decode.list ioK8sApiRbacV1beta1PolicyRuleDecoder)



ioK8sApiRbacV1beta1RoleEncoder : IoK8sApiRbacV1beta1Role -> Encode.Value
ioK8sApiRbacV1beta1RoleEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "rules", (Encode.list << List.map ioK8sApiRbacV1beta1PolicyRuleEncoder) model.rules )
        ]


