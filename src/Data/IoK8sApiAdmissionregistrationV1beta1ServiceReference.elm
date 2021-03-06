{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAdmissionregistrationV1beta1ServiceReference exposing (IoK8sApiAdmissionregistrationV1beta1ServiceReference, ioK8sApiAdmissionregistrationV1beta1ServiceReferenceDecoder, ioK8sApiAdmissionregistrationV1beta1ServiceReferenceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ServiceReference holds a reference to Service.legacy.k8s.io
-}


type alias IoK8sApiAdmissionregistrationV1beta1ServiceReference =
    { name : String
    , namespace : String
    , path : Maybe String
    }


ioK8sApiAdmissionregistrationV1beta1ServiceReferenceDecoder : Decoder IoK8sApiAdmissionregistrationV1beta1ServiceReference
ioK8sApiAdmissionregistrationV1beta1ServiceReferenceDecoder =
    decode IoK8sApiAdmissionregistrationV1beta1ServiceReference
        |> required "name" Decode.string
        |> required "namespace" Decode.string
        |> optional "path" (Decode.nullable Decode.string) Nothing



ioK8sApiAdmissionregistrationV1beta1ServiceReferenceEncoder : IoK8sApiAdmissionregistrationV1beta1ServiceReference -> Encode.Value
ioK8sApiAdmissionregistrationV1beta1ServiceReferenceEncoder model =
    Encode.object
        [ ( "name", Encode.string model.name )
        , ( "namespace", Encode.string model.namespace )
        , ( "path", withDefault Encode.null (map Encode.string model.path) )
        ]


