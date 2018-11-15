{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1EndpointAddress exposing (IoK8sApiCoreV1EndpointAddress, ioK8sApiCoreV1EndpointAddressDecoder, ioK8sApiCoreV1EndpointAddressEncoder)

import Data.IoK8sApiCoreV1ObjectReference exposing (IoK8sApiCoreV1ObjectReference, ioK8sApiCoreV1ObjectReferenceDecoder, ioK8sApiCoreV1ObjectReferenceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   EndpointAddress is a tuple that describes single IP address.
-}


type alias IoK8sApiCoreV1EndpointAddress =
    { hostname : Maybe String
    , ip : String
    , nodeName : Maybe String
    , targetRef : Maybe IoK8sApiCoreV1ObjectReference
    }


ioK8sApiCoreV1EndpointAddressDecoder : Decoder IoK8sApiCoreV1EndpointAddress
ioK8sApiCoreV1EndpointAddressDecoder =
    decode IoK8sApiCoreV1EndpointAddress
        |> optional "hostname" (Decode.nullable Decode.string) Nothing
        |> required "ip" Decode.string
        |> optional "nodeName" (Decode.nullable Decode.string) Nothing
        |> optional "targetRef" (Decode.nullable ioK8sApiCoreV1ObjectReferenceDecoder) Nothing



ioK8sApiCoreV1EndpointAddressEncoder : IoK8sApiCoreV1EndpointAddress -> Encode.Value
ioK8sApiCoreV1EndpointAddressEncoder model =
    Encode.object
        [ ( "hostname", withDefault Encode.null (map Encode.string model.hostname) )
        , ( "ip", Encode.string model.ip )
        , ( "nodeName", withDefault Encode.null (map Encode.string model.nodeName) )
        , ( "targetRef", withDefault Encode.null (map ioK8sApiCoreV1ObjectReferenceEncoder model.targetRef) )
        ]

