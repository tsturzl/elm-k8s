{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApimachineryPkgApisMetaV1MicroTime exposing (IoK8sApimachineryPkgApisMetaV1MicroTime, ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder, ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   MicroTime is version of Time with microsecond level precision.
-}


type alias IoK8sApimachineryPkgApisMetaV1MicroTime
    = DateTime


ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder : Decoder IoK8sApimachineryPkgApisMetaV1MicroTime
ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder =
    Decode.dateTime


ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder : IoK8sApimachineryPkgApisMetaV1MicroTime -> Encode.Value
ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder =
    Encode.dateTime