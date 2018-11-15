{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ExecAction exposing (IoK8sApiCoreV1ExecAction, ioK8sApiCoreV1ExecActionDecoder, ioK8sApiCoreV1ExecActionEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ExecAction describes a \"run in container\" action.
-}


type alias IoK8sApiCoreV1ExecAction =
    { command : Maybe (List String)
    }


ioK8sApiCoreV1ExecActionDecoder : Decoder IoK8sApiCoreV1ExecAction
ioK8sApiCoreV1ExecActionDecoder =
    decode IoK8sApiCoreV1ExecAction
        |> optional "command" (Decode.nullable (Decode.list Decode.string)) Nothing



ioK8sApiCoreV1ExecActionEncoder : IoK8sApiCoreV1ExecAction -> Encode.Value
ioK8sApiCoreV1ExecActionEncoder model =
    Encode.object
        [ ( "command", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.command) )
        ]

