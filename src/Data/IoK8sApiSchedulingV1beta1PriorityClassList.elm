{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiSchedulingV1beta1PriorityClassList exposing (IoK8sApiSchedulingV1beta1PriorityClassList, ioK8sApiSchedulingV1beta1PriorityClassListDecoder, ioK8sApiSchedulingV1beta1PriorityClassListEncoder)

import Data.IoK8sApiSchedulingV1beta1PriorityClass exposing (IoK8sApiSchedulingV1beta1PriorityClass, ioK8sApiSchedulingV1beta1PriorityClassDecoder, ioK8sApiSchedulingV1beta1PriorityClassEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PriorityClassList is a collection of priority classes.
-}


type alias IoK8sApiSchedulingV1beta1PriorityClassList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiSchedulingV1beta1PriorityClass)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiSchedulingV1beta1PriorityClassListDecoder : Decoder IoK8sApiSchedulingV1beta1PriorityClassList
ioK8sApiSchedulingV1beta1PriorityClassListDecoder =
    decode IoK8sApiSchedulingV1beta1PriorityClassList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiSchedulingV1beta1PriorityClassDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiSchedulingV1beta1PriorityClassListEncoder : IoK8sApiSchedulingV1beta1PriorityClassList -> Encode.Value
ioK8sApiSchedulingV1beta1PriorityClassListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiSchedulingV1beta1PriorityClassEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


