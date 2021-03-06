{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta2DeploymentList exposing (IoK8sApiAppsV1beta2DeploymentList, ioK8sApiAppsV1beta2DeploymentListDecoder, ioK8sApiAppsV1beta2DeploymentListEncoder)

import Data.IoK8sApiAppsV1beta2Deployment exposing (IoK8sApiAppsV1beta2Deployment, ioK8sApiAppsV1beta2DeploymentDecoder, ioK8sApiAppsV1beta2DeploymentEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DeploymentList is a list of Deployments.
-}


type alias IoK8sApiAppsV1beta2DeploymentList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiAppsV1beta2Deployment)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiAppsV1beta2DeploymentListDecoder : Decoder IoK8sApiAppsV1beta2DeploymentList
ioK8sApiAppsV1beta2DeploymentListDecoder =
    decode IoK8sApiAppsV1beta2DeploymentList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiAppsV1beta2DeploymentDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiAppsV1beta2DeploymentListEncoder : IoK8sApiAppsV1beta2DeploymentList -> Encode.Value
ioK8sApiAppsV1beta2DeploymentListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiAppsV1beta2DeploymentEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


