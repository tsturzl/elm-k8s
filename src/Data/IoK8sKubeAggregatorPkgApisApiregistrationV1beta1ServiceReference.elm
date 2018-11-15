{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference exposing (IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference, ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceDecoder, ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ServiceReference holds a reference to Service.legacy.k8s.io
-}


type alias IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference =
    { name : Maybe String
    , namespace : Maybe String
    }


ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceDecoder : Decoder IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference
ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceDecoder =
    decode IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference
        |> optional "name" (Decode.nullable Decode.string) Nothing
        |> optional "namespace" (Decode.nullable Decode.string) Nothing



ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceEncoder : IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference -> Encode.Value
ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceEncoder model =
    Encode.object
        [ ( "name", withDefault Encode.null (map Encode.string model.name) )
        , ( "namespace", withDefault Encode.null (map Encode.string model.namespace) )
        ]


