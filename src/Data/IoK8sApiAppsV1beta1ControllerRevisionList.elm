{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1ControllerRevisionList exposing (IoK8sApiAppsV1beta1ControllerRevisionList, ioK8sApiAppsV1beta1ControllerRevisionListDecoder, ioK8sApiAppsV1beta1ControllerRevisionListEncoder)

import Data.IoK8sApiAppsV1beta1ControllerRevision exposing (IoK8sApiAppsV1beta1ControllerRevision, ioK8sApiAppsV1beta1ControllerRevisionDecoder, ioK8sApiAppsV1beta1ControllerRevisionEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ControllerRevisionList is a resource containing a list of ControllerRevision objects.
-}


type alias IoK8sApiAppsV1beta1ControllerRevisionList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiAppsV1beta1ControllerRevision)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiAppsV1beta1ControllerRevisionListDecoder : Decoder IoK8sApiAppsV1beta1ControllerRevisionList
ioK8sApiAppsV1beta1ControllerRevisionListDecoder =
    decode IoK8sApiAppsV1beta1ControllerRevisionList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiAppsV1beta1ControllerRevisionDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiAppsV1beta1ControllerRevisionListEncoder : IoK8sApiAppsV1beta1ControllerRevisionList -> Encode.Value
ioK8sApiAppsV1beta1ControllerRevisionListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiAppsV1beta1ControllerRevisionEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


