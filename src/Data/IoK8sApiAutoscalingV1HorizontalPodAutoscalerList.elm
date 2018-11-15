{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV1HorizontalPodAutoscalerList exposing (IoK8sApiAutoscalingV1HorizontalPodAutoscalerList, ioK8sApiAutoscalingV1HorizontalPodAutoscalerListDecoder, ioK8sApiAutoscalingV1HorizontalPodAutoscalerListEncoder)

import Data.IoK8sApiAutoscalingV1HorizontalPodAutoscaler exposing (IoK8sApiAutoscalingV1HorizontalPodAutoscaler, ioK8sApiAutoscalingV1HorizontalPodAutoscalerDecoder, ioK8sApiAutoscalingV1HorizontalPodAutoscalerEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   list of horizontal pod autoscaler objects.
-}


type alias IoK8sApiAutoscalingV1HorizontalPodAutoscalerList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiAutoscalingV1HorizontalPodAutoscaler)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiAutoscalingV1HorizontalPodAutoscalerListDecoder : Decoder IoK8sApiAutoscalingV1HorizontalPodAutoscalerList
ioK8sApiAutoscalingV1HorizontalPodAutoscalerListDecoder =
    decode IoK8sApiAutoscalingV1HorizontalPodAutoscalerList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiAutoscalingV1HorizontalPodAutoscalerDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiAutoscalingV1HorizontalPodAutoscalerListEncoder : IoK8sApiAutoscalingV1HorizontalPodAutoscalerList -> Encode.Value
ioK8sApiAutoscalingV1HorizontalPodAutoscalerListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiAutoscalingV1HorizontalPodAutoscalerEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]

