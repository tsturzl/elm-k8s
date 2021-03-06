{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1LoadBalancerIngress exposing (IoK8sApiCoreV1LoadBalancerIngress, ioK8sApiCoreV1LoadBalancerIngressDecoder, ioK8sApiCoreV1LoadBalancerIngressEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
-}


type alias IoK8sApiCoreV1LoadBalancerIngress =
    { hostname : Maybe String
    , ip : Maybe String
    }


ioK8sApiCoreV1LoadBalancerIngressDecoder : Decoder IoK8sApiCoreV1LoadBalancerIngress
ioK8sApiCoreV1LoadBalancerIngressDecoder =
    decode IoK8sApiCoreV1LoadBalancerIngress
        |> optional "hostname" (Decode.nullable Decode.string) Nothing
        |> optional "ip" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1LoadBalancerIngressEncoder : IoK8sApiCoreV1LoadBalancerIngress -> Encode.Value
ioK8sApiCoreV1LoadBalancerIngressEncoder model =
    Encode.object
        [ ( "hostname", withDefault Encode.null (map Encode.string model.hostname) )
        , ( "ip", withDefault Encode.null (map Encode.string model.ip) )
        ]


