{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1DeploymentRollback exposing (IoK8sApiAppsV1beta1DeploymentRollback, ioK8sApiAppsV1beta1DeploymentRollbackDecoder, ioK8sApiAppsV1beta1DeploymentRollbackEncoder)

import Data.IoK8sApiAppsV1beta1RollbackConfig exposing (IoK8sApiAppsV1beta1RollbackConfig, ioK8sApiAppsV1beta1RollbackConfigDecoder, ioK8sApiAppsV1beta1RollbackConfigEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.
-}


type alias IoK8sApiAppsV1beta1DeploymentRollback =
    { apiVersion : Maybe String
    , kind : Maybe String
    , name : String
    , rollbackTo : IoK8sApiAppsV1beta1RollbackConfig
    , updatedAnnotations : Maybe (List String)
    }


ioK8sApiAppsV1beta1DeploymentRollbackDecoder : Decoder IoK8sApiAppsV1beta1DeploymentRollback
ioK8sApiAppsV1beta1DeploymentRollbackDecoder =
    decode IoK8sApiAppsV1beta1DeploymentRollback
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> required "name" Decode.string
        |> required "rollbackTo" ioK8sApiAppsV1beta1RollbackConfigDecoder
        |> optional "updatedAnnotations" (Decode.nullable (Decode.list Decode.string)) Nothing



ioK8sApiAppsV1beta1DeploymentRollbackEncoder : IoK8sApiAppsV1beta1DeploymentRollback -> Encode.Value
ioK8sApiAppsV1beta1DeploymentRollbackEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "name", Encode.string model.name )
        , ( "rollbackTo", ioK8sApiAppsV1beta1RollbackConfigEncoder model.rollbackTo )
        , ( "updatedAnnotations", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.updatedAnnotations) )
        ]


