{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1Deployment exposing (IoK8sApiExtensionsV1beta1Deployment, ioK8sApiExtensionsV1beta1DeploymentDecoder, ioK8sApiExtensionsV1beta1DeploymentEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiExtensionsV1beta1DeploymentSpec exposing (IoK8sApiExtensionsV1beta1DeploymentSpec, ioK8sApiExtensionsV1beta1DeploymentSpecDecoder, ioK8sApiExtensionsV1beta1DeploymentSpecEncoder)
import Data.IoK8sApiExtensionsV1beta1DeploymentStatus exposing (IoK8sApiExtensionsV1beta1DeploymentStatus, ioK8sApiExtensionsV1beta1DeploymentStatusDecoder, ioK8sApiExtensionsV1beta1DeploymentStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DEPRECATED - This group version of Deployment is deprecated by apps/v1beta2/Deployment. See the release notes for more information. Deployment enables declarative updates for Pods and ReplicaSets.
-}


type alias IoK8sApiExtensionsV1beta1Deployment =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiExtensionsV1beta1DeploymentSpec
    , status : Maybe IoK8sApiExtensionsV1beta1DeploymentStatus
    }


ioK8sApiExtensionsV1beta1DeploymentDecoder : Decoder IoK8sApiExtensionsV1beta1Deployment
ioK8sApiExtensionsV1beta1DeploymentDecoder =
    decode IoK8sApiExtensionsV1beta1Deployment
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiExtensionsV1beta1DeploymentSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiExtensionsV1beta1DeploymentStatusDecoder) Nothing



ioK8sApiExtensionsV1beta1DeploymentEncoder : IoK8sApiExtensionsV1beta1Deployment -> Encode.Value
ioK8sApiExtensionsV1beta1DeploymentEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiExtensionsV1beta1DeploymentSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiExtensionsV1beta1DeploymentStatusEncoder model.status) )
        ]


