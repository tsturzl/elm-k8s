{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1ControllerRevision exposing (IoK8sApiAppsV1beta1ControllerRevision, ioK8sApiAppsV1beta1ControllerRevisionDecoder, ioK8sApiAppsV1beta1ControllerRevisionEncoder)

import Data.IoK8sApimachineryPkgRuntimeRawExtension exposing (IoK8sApimachineryPkgRuntimeRawExtension, ioK8sApimachineryPkgRuntimeRawExtensionDecoder, ioK8sApimachineryPkgRuntimeRawExtensionEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DEPRECATED - This group version of ControllerRevision is deprecated by apps/v1beta2/ControllerRevision. See the release notes for more information. ControllerRevision implements an immutable snapshot of state data. Clients are responsible for serializing and deserializing the objects that contain their internal state. Once a ControllerRevision has been successfully created, it can not be updated. The API Server will fail validation of all requests that attempt to mutate the Data field. ControllerRevisions may, however, be deleted. Note that, due to its use by both the DaemonSet and StatefulSet controllers for update and rollback, this object is beta. However, it may be subject to name and representation changes in future releases, and clients should not depend on its stability. It is primarily for internal use by controllers.
-}


type alias IoK8sApiAppsV1beta1ControllerRevision =
    { apiVersion : Maybe String
    , data : Maybe IoK8sApimachineryPkgRuntimeRawExtension
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , revision : Int
    }


ioK8sApiAppsV1beta1ControllerRevisionDecoder : Decoder IoK8sApiAppsV1beta1ControllerRevision
ioK8sApiAppsV1beta1ControllerRevisionDecoder =
    decode IoK8sApiAppsV1beta1ControllerRevision
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "data" (Decode.nullable ioK8sApimachineryPkgRuntimeRawExtensionDecoder) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> required "revision" Decode.int



ioK8sApiAppsV1beta1ControllerRevisionEncoder : IoK8sApiAppsV1beta1ControllerRevision -> Encode.Value
ioK8sApiAppsV1beta1ControllerRevisionEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "data", withDefault Encode.null (map ioK8sApimachineryPkgRuntimeRawExtensionEncoder model.data) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "revision", Encode.int model.revision )
        ]


