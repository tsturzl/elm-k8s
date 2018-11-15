{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1NetworkPolicyPort exposing (IoK8sApiExtensionsV1beta1NetworkPolicyPort, ioK8sApiExtensionsV1beta1NetworkPolicyPortDecoder, ioK8sApiExtensionsV1beta1NetworkPolicyPortEncoder)

import Data.IoK8sApimachineryPkgUtilIntstrIntOrString exposing (IoK8sApimachineryPkgUtilIntstrIntOrString, ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder, ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DEPRECATED 1.9 - This group version of NetworkPolicyPort is deprecated by networking/v1/NetworkPolicyPort.
-}


type alias IoK8sApiExtensionsV1beta1NetworkPolicyPort =
    { port_ : Maybe IoK8sApimachineryPkgUtilIntstrIntOrString
    , protocol : Maybe String
    }


ioK8sApiExtensionsV1beta1NetworkPolicyPortDecoder : Decoder IoK8sApiExtensionsV1beta1NetworkPolicyPort
ioK8sApiExtensionsV1beta1NetworkPolicyPortDecoder =
    decode IoK8sApiExtensionsV1beta1NetworkPolicyPort
        |> optional "port" (Decode.nullable ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder) Nothing
        |> optional "protocol" (Decode.nullable Decode.string) Nothing



ioK8sApiExtensionsV1beta1NetworkPolicyPortEncoder : IoK8sApiExtensionsV1beta1NetworkPolicyPort -> Encode.Value
ioK8sApiExtensionsV1beta1NetworkPolicyPortEncoder model =
    Encode.object
        [ ( "port", withDefault Encode.null (map ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder model.port_) )
        , ( "protocol", withDefault Encode.null (map Encode.string model.protocol) )
        ]


