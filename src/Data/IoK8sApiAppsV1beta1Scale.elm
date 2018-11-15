{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1Scale exposing (IoK8sApiAppsV1beta1Scale, ioK8sApiAppsV1beta1ScaleDecoder, ioK8sApiAppsV1beta1ScaleEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiAppsV1beta1ScaleSpec exposing (IoK8sApiAppsV1beta1ScaleSpec, ioK8sApiAppsV1beta1ScaleSpecDecoder, ioK8sApiAppsV1beta1ScaleSpecEncoder)
import Data.IoK8sApiAppsV1beta1ScaleStatus exposing (IoK8sApiAppsV1beta1ScaleStatus, ioK8sApiAppsV1beta1ScaleStatusDecoder, ioK8sApiAppsV1beta1ScaleStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Scale represents a scaling request for a resource.
-}


type alias IoK8sApiAppsV1beta1Scale =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiAppsV1beta1ScaleSpec
    , status : Maybe IoK8sApiAppsV1beta1ScaleStatus
    }


ioK8sApiAppsV1beta1ScaleDecoder : Decoder IoK8sApiAppsV1beta1Scale
ioK8sApiAppsV1beta1ScaleDecoder =
    decode IoK8sApiAppsV1beta1Scale
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiAppsV1beta1ScaleSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiAppsV1beta1ScaleStatusDecoder) Nothing



ioK8sApiAppsV1beta1ScaleEncoder : IoK8sApiAppsV1beta1Scale -> Encode.Value
ioK8sApiAppsV1beta1ScaleEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiAppsV1beta1ScaleSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiAppsV1beta1ScaleStatusEncoder model.status) )
        ]


