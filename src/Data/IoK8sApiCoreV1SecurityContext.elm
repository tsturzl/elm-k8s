{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1SecurityContext exposing (IoK8sApiCoreV1SecurityContext, ioK8sApiCoreV1SecurityContextDecoder, ioK8sApiCoreV1SecurityContextEncoder)

import Data.IoK8sApiCoreV1Capabilities exposing (IoK8sApiCoreV1Capabilities, ioK8sApiCoreV1CapabilitiesDecoder, ioK8sApiCoreV1CapabilitiesEncoder)
import Data.IoK8sApiCoreV1SELinuxOptions exposing (IoK8sApiCoreV1SELinuxOptions, ioK8sApiCoreV1SELinuxOptionsDecoder, ioK8sApiCoreV1SELinuxOptionsEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
-}


type alias IoK8sApiCoreV1SecurityContext =
    { allowPrivilegeEscalation : Maybe Bool
    , capabilities : Maybe IoK8sApiCoreV1Capabilities
    , privileged : Maybe Bool
    , procMount : Maybe String
    , readOnlyRootFilesystem : Maybe Bool
    , runAsGroup : Maybe Int
    , runAsNonRoot : Maybe Bool
    , runAsUser : Maybe Int
    , seLinuxOptions : Maybe IoK8sApiCoreV1SELinuxOptions
    }


ioK8sApiCoreV1SecurityContextDecoder : Decoder IoK8sApiCoreV1SecurityContext
ioK8sApiCoreV1SecurityContextDecoder =
    decode IoK8sApiCoreV1SecurityContext
        |> optional "allowPrivilegeEscalation" (Decode.nullable Decode.bool) Nothing
        |> optional "capabilities" (Decode.nullable ioK8sApiCoreV1CapabilitiesDecoder) Nothing
        |> optional "privileged" (Decode.nullable Decode.bool) Nothing
        |> optional "procMount" (Decode.nullable Decode.string) Nothing
        |> optional "readOnlyRootFilesystem" (Decode.nullable Decode.bool) Nothing
        |> optional "runAsGroup" (Decode.nullable Decode.int) Nothing
        |> optional "runAsNonRoot" (Decode.nullable Decode.bool) Nothing
        |> optional "runAsUser" (Decode.nullable Decode.int) Nothing
        |> optional "seLinuxOptions" (Decode.nullable ioK8sApiCoreV1SELinuxOptionsDecoder) Nothing



ioK8sApiCoreV1SecurityContextEncoder : IoK8sApiCoreV1SecurityContext -> Encode.Value
ioK8sApiCoreV1SecurityContextEncoder model =
    Encode.object
        [ ( "allowPrivilegeEscalation", withDefault Encode.null (map Encode.bool model.allowPrivilegeEscalation) )
        , ( "capabilities", withDefault Encode.null (map ioK8sApiCoreV1CapabilitiesEncoder model.capabilities) )
        , ( "privileged", withDefault Encode.null (map Encode.bool model.privileged) )
        , ( "procMount", withDefault Encode.null (map Encode.string model.procMount) )
        , ( "readOnlyRootFilesystem", withDefault Encode.null (map Encode.bool model.readOnlyRootFilesystem) )
        , ( "runAsGroup", withDefault Encode.null (map Encode.int model.runAsGroup) )
        , ( "runAsNonRoot", withDefault Encode.null (map Encode.bool model.runAsNonRoot) )
        , ( "runAsUser", withDefault Encode.null (map Encode.int model.runAsUser) )
        , ( "seLinuxOptions", withDefault Encode.null (map ioK8sApiCoreV1SELinuxOptionsEncoder model.seLinuxOptions) )
        ]

