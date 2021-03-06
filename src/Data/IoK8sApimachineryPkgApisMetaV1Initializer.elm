{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApimachineryPkgApisMetaV1Initializer exposing (IoK8sApimachineryPkgApisMetaV1Initializer, ioK8sApimachineryPkgApisMetaV1InitializerDecoder, ioK8sApimachineryPkgApisMetaV1InitializerEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Initializer is information about an initializer that has not yet completed.
-}


type alias IoK8sApimachineryPkgApisMetaV1Initializer =
    { name : String
    }


ioK8sApimachineryPkgApisMetaV1InitializerDecoder : Decoder IoK8sApimachineryPkgApisMetaV1Initializer
ioK8sApimachineryPkgApisMetaV1InitializerDecoder =
    decode IoK8sApimachineryPkgApisMetaV1Initializer
        |> required "name" Decode.string



ioK8sApimachineryPkgApisMetaV1InitializerEncoder : IoK8sApimachineryPkgApisMetaV1Initializer -> Encode.Value
ioK8sApimachineryPkgApisMetaV1InitializerEncoder model =
    Encode.object
        [ ( "name", Encode.string model.name )
        ]


