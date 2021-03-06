{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ObjectFieldSelector exposing (IoK8sApiCoreV1ObjectFieldSelector, ioK8sApiCoreV1ObjectFieldSelectorDecoder, ioK8sApiCoreV1ObjectFieldSelectorEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ObjectFieldSelector selects an APIVersioned field of an object.
-}


type alias IoK8sApiCoreV1ObjectFieldSelector =
    { apiVersion : Maybe String
    , fieldPath : String
    }


ioK8sApiCoreV1ObjectFieldSelectorDecoder : Decoder IoK8sApiCoreV1ObjectFieldSelector
ioK8sApiCoreV1ObjectFieldSelectorDecoder =
    decode IoK8sApiCoreV1ObjectFieldSelector
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "fieldPath" Decode.string



ioK8sApiCoreV1ObjectFieldSelectorEncoder : IoK8sApiCoreV1ObjectFieldSelector -> Encode.Value
ioK8sApiCoreV1ObjectFieldSelectorEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "fieldPath", Encode.string model.fieldPath )
        ]


