{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoordinationV1beta1LeaseList exposing (IoK8sApiCoordinationV1beta1LeaseList, ioK8sApiCoordinationV1beta1LeaseListDecoder, ioK8sApiCoordinationV1beta1LeaseListEncoder)

import Data.IoK8sApiCoordinationV1beta1Lease exposing (IoK8sApiCoordinationV1beta1Lease, ioK8sApiCoordinationV1beta1LeaseDecoder, ioK8sApiCoordinationV1beta1LeaseEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   LeaseList is a list of Lease objects.
-}


type alias IoK8sApiCoordinationV1beta1LeaseList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiCoordinationV1beta1Lease)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiCoordinationV1beta1LeaseListDecoder : Decoder IoK8sApiCoordinationV1beta1LeaseList
ioK8sApiCoordinationV1beta1LeaseListDecoder =
    decode IoK8sApiCoordinationV1beta1LeaseList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiCoordinationV1beta1LeaseDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiCoordinationV1beta1LeaseListEncoder : IoK8sApiCoordinationV1beta1LeaseList -> Encode.Value
ioK8sApiCoordinationV1beta1LeaseListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiCoordinationV1beta1LeaseEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


