{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatus exposing (IoK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatus, ioK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatusDecoder, ioK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatusEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatus =
    {     }


ioK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatusDecoder : Decoder IoK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatus
ioK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatusDecoder =
    decode IoK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatus



ioK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatusEncoder : IoK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatus -> Encode.Value
ioK8sKubernetesPkgApisCertificatesV1beta1CertificateSigningRequestStatusEncoder model =
    Encode.object
        ]

