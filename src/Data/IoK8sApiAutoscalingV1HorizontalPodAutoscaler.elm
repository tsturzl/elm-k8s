{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV1HorizontalPodAutoscaler exposing (IoK8sApiAutoscalingV1HorizontalPodAutoscaler, ioK8sApiAutoscalingV1HorizontalPodAutoscalerDecoder, ioK8sApiAutoscalingV1HorizontalPodAutoscalerEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec exposing (IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec, ioK8sApiAutoscalingV1HorizontalPodAutoscalerSpecDecoder, ioK8sApiAutoscalingV1HorizontalPodAutoscalerSpecEncoder)
import Data.IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus exposing (IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus, ioK8sApiAutoscalingV1HorizontalPodAutoscalerStatusDecoder, ioK8sApiAutoscalingV1HorizontalPodAutoscalerStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   configuration of a horizontal pod autoscaler.
-}


type alias IoK8sApiAutoscalingV1HorizontalPodAutoscaler =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec
    , status : Maybe IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus
    }


ioK8sApiAutoscalingV1HorizontalPodAutoscalerDecoder : Decoder IoK8sApiAutoscalingV1HorizontalPodAutoscaler
ioK8sApiAutoscalingV1HorizontalPodAutoscalerDecoder =
    decode IoK8sApiAutoscalingV1HorizontalPodAutoscaler
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiAutoscalingV1HorizontalPodAutoscalerSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiAutoscalingV1HorizontalPodAutoscalerStatusDecoder) Nothing



ioK8sApiAutoscalingV1HorizontalPodAutoscalerEncoder : IoK8sApiAutoscalingV1HorizontalPodAutoscaler -> Encode.Value
ioK8sApiAutoscalingV1HorizontalPodAutoscalerEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiAutoscalingV1HorizontalPodAutoscalerSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiAutoscalingV1HorizontalPodAutoscalerStatusEncoder model.status) )
        ]


