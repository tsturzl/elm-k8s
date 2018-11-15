{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiRbacV1beta1ClusterRoleList exposing (IoK8sApiRbacV1beta1ClusterRoleList, ioK8sApiRbacV1beta1ClusterRoleListDecoder, ioK8sApiRbacV1beta1ClusterRoleListEncoder)

import Data.IoK8sApiRbacV1beta1ClusterRole exposing (IoK8sApiRbacV1beta1ClusterRole, ioK8sApiRbacV1beta1ClusterRoleDecoder, ioK8sApiRbacV1beta1ClusterRoleEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ClusterRoleList is a collection of ClusterRoles
-}


type alias IoK8sApiRbacV1beta1ClusterRoleList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiRbacV1beta1ClusterRole)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiRbacV1beta1ClusterRoleListDecoder : Decoder IoK8sApiRbacV1beta1ClusterRoleList
ioK8sApiRbacV1beta1ClusterRoleListDecoder =
    decode IoK8sApiRbacV1beta1ClusterRoleList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiRbacV1beta1ClusterRoleDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiRbacV1beta1ClusterRoleListEncoder : IoK8sApiRbacV1beta1ClusterRoleList -> Encode.Value
ioK8sApiRbacV1beta1ClusterRoleListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiRbacV1beta1ClusterRoleEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]

