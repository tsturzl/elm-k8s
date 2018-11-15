{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1DaemonSetList exposing (IoK8sApiExtensionsV1beta1DaemonSetList, ioK8sApiExtensionsV1beta1DaemonSetListDecoder, ioK8sApiExtensionsV1beta1DaemonSetListEncoder)

import Data.IoK8sApiExtensionsV1beta1DaemonSet exposing (IoK8sApiExtensionsV1beta1DaemonSet, ioK8sApiExtensionsV1beta1DaemonSetDecoder, ioK8sApiExtensionsV1beta1DaemonSetEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DaemonSetList is a collection of daemon sets.
-}


type alias IoK8sApiExtensionsV1beta1DaemonSetList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiExtensionsV1beta1DaemonSet)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiExtensionsV1beta1DaemonSetListDecoder : Decoder IoK8sApiExtensionsV1beta1DaemonSetList
ioK8sApiExtensionsV1beta1DaemonSetListDecoder =
    decode IoK8sApiExtensionsV1beta1DaemonSetList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiExtensionsV1beta1DaemonSetDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiExtensionsV1beta1DaemonSetListEncoder : IoK8sApiExtensionsV1beta1DaemonSetList -> Encode.Value
ioK8sApiExtensionsV1beta1DaemonSetListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiExtensionsV1beta1DaemonSetEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


