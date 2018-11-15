{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAuditregistrationV1alpha1Policy exposing (IoK8sApiAuditregistrationV1alpha1Policy, ioK8sApiAuditregistrationV1alpha1PolicyDecoder, ioK8sApiAuditregistrationV1alpha1PolicyEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Policy defines the configuration of how audit events are logged
-}


type alias IoK8sApiAuditregistrationV1alpha1Policy =
    { level : String
    , stages : Maybe (List String)
    }


ioK8sApiAuditregistrationV1alpha1PolicyDecoder : Decoder IoK8sApiAuditregistrationV1alpha1Policy
ioK8sApiAuditregistrationV1alpha1PolicyDecoder =
    decode IoK8sApiAuditregistrationV1alpha1Policy
        |> required "level" Decode.string
        |> optional "stages" (Decode.nullable (Decode.list Decode.string)) Nothing



ioK8sApiAuditregistrationV1alpha1PolicyEncoder : IoK8sApiAuditregistrationV1alpha1Policy -> Encode.Value
ioK8sApiAuditregistrationV1alpha1PolicyEncoder model =
    Encode.object
        [ ( "level", Encode.string model.level )
        , ( "stages", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.stages) )
        ]


