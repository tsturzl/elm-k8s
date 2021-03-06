{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1EndpointSubset exposing (IoK8sApiCoreV1EndpointSubset, ioK8sApiCoreV1EndpointSubsetDecoder, ioK8sApiCoreV1EndpointSubsetEncoder)

import Data.IoK8sApiCoreV1EndpointAddress exposing (IoK8sApiCoreV1EndpointAddress, ioK8sApiCoreV1EndpointAddressDecoder, ioK8sApiCoreV1EndpointAddressEncoder)
import Data.IoK8sApiCoreV1EndpointAddress exposing (IoK8sApiCoreV1EndpointAddress, ioK8sApiCoreV1EndpointAddressDecoder, ioK8sApiCoreV1EndpointAddressEncoder)
import Data.IoK8sApiCoreV1EndpointPort exposing (IoK8sApiCoreV1EndpointPort, ioK8sApiCoreV1EndpointPortDecoder, ioK8sApiCoreV1EndpointPortEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:   {     Addresses: [{\"ip\": \"10.10.1.1\"}, {\"ip\": \"10.10.2.2\"}],     Ports:     [{\"name\": \"a\", \"port\": 8675}, {\"name\": \"b\", \"port\": 309}]   } The resulting set of endpoints can be viewed as:     a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],     b: [ 10.10.1.1:309, 10.10.2.2:309 ]
-}


type alias IoK8sApiCoreV1EndpointSubset =
    { addresses : Maybe (List IoK8sApiCoreV1EndpointAddress)
    , notReadyAddresses : Maybe (List IoK8sApiCoreV1EndpointAddress)
    , ports : Maybe (List IoK8sApiCoreV1EndpointPort)
    }


ioK8sApiCoreV1EndpointSubsetDecoder : Decoder IoK8sApiCoreV1EndpointSubset
ioK8sApiCoreV1EndpointSubsetDecoder =
    decode IoK8sApiCoreV1EndpointSubset
        |> optional "addresses" (Decode.nullable (Decode.list ioK8sApiCoreV1EndpointAddressDecoder)) Nothing
        |> optional "notReadyAddresses" (Decode.nullable (Decode.list ioK8sApiCoreV1EndpointAddressDecoder)) Nothing
        |> optional "ports" (Decode.nullable (Decode.list ioK8sApiCoreV1EndpointPortDecoder)) Nothing



ioK8sApiCoreV1EndpointSubsetEncoder : IoK8sApiCoreV1EndpointSubset -> Encode.Value
ioK8sApiCoreV1EndpointSubsetEncoder model =
    Encode.object
        [ ( "addresses", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1EndpointAddressEncoder) model.addresses) )
        , ( "notReadyAddresses", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1EndpointAddressEncoder) model.notReadyAddresses) )
        , ( "ports", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1EndpointPortEncoder) model.ports) )
        ]


