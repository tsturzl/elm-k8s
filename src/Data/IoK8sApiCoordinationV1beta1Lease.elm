{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoordinationV1beta1Lease exposing (IoK8sApiCoordinationV1beta1Lease, ioK8sApiCoordinationV1beta1LeaseDecoder, ioK8sApiCoordinationV1beta1LeaseEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiCoordinationV1beta1LeaseSpec exposing (IoK8sApiCoordinationV1beta1LeaseSpec, ioK8sApiCoordinationV1beta1LeaseSpecDecoder, ioK8sApiCoordinationV1beta1LeaseSpecEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Lease defines a lease concept.
-}


type alias IoK8sApiCoordinationV1beta1Lease =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiCoordinationV1beta1LeaseSpec
    }


ioK8sApiCoordinationV1beta1LeaseDecoder : Decoder IoK8sApiCoordinationV1beta1Lease
ioK8sApiCoordinationV1beta1LeaseDecoder =
    decode IoK8sApiCoordinationV1beta1Lease
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiCoordinationV1beta1LeaseSpecDecoder) Nothing



ioK8sApiCoordinationV1beta1LeaseEncoder : IoK8sApiCoordinationV1beta1Lease -> Encode.Value
ioK8sApiCoordinationV1beta1LeaseEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiCoordinationV1beta1LeaseSpecEncoder model.spec) )
        ]

