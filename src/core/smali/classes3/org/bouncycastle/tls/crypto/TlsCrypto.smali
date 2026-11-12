.class public interface abstract Lorg/bouncycastle/tls/crypto/TlsCrypto;
.super Ljava/lang/Object;


# virtual methods
.method public abstract adoptSecret(Lorg/bouncycastle/tls/crypto/TlsSecret;)Lorg/bouncycastle/tls/crypto/TlsSecret;
.end method

.method public abstract createCertificate(S[B)Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createCertificate([B)Lorg/bouncycastle/tls/crypto/TlsCertificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createCipher(Lorg/bouncycastle/tls/crypto/TlsCryptoParameters;II)Lorg/bouncycastle/tls/crypto/TlsCipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createDHDomain(Lorg/bouncycastle/tls/crypto/TlsDHConfig;)Lorg/bouncycastle/tls/crypto/TlsDHDomain;
.end method

.method public abstract createECDomain(Lorg/bouncycastle/tls/crypto/TlsECConfig;)Lorg/bouncycastle/tls/crypto/TlsECDomain;
.end method

.method public abstract createHMAC(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;
.end method

.method public abstract createHMACForHash(I)Lorg/bouncycastle/tls/crypto/TlsHMAC;
.end method

.method public abstract createHash(I)Lorg/bouncycastle/tls/crypto/TlsHash;
.end method

.method public abstract createKemDomain(Lorg/bouncycastle/tls/crypto/TlsKemConfig;)Lorg/bouncycastle/tls/crypto/TlsKemDomain;
.end method

.method public abstract createNonceGenerator([B)Lorg/bouncycastle/tls/crypto/TlsNonceGenerator;
.end method

.method public abstract createSRP6Client(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Lorg/bouncycastle/tls/crypto/TlsSRP6Client;
.end method

.method public abstract createSRP6Server(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;Ljava/math/BigInteger;)Lorg/bouncycastle/tls/crypto/TlsSRP6Server;
.end method

.method public abstract createSRP6VerifierGenerator(Lorg/bouncycastle/tls/crypto/TlsSRPConfig;)Lorg/bouncycastle/tls/crypto/TlsSRP6VerifierGenerator;
.end method

.method public abstract createSecret([B)Lorg/bouncycastle/tls/crypto/TlsSecret;
.end method

.method public abstract generateRSAPreMasterSecret(Lorg/bouncycastle/tls/ProtocolVersion;)Lorg/bouncycastle/tls/crypto/TlsSecret;
.end method

.method public abstract getSecureRandom()Ljava/security/SecureRandom;
.end method

.method public abstract hasAnyStreamVerifiers(Ljava/util/Vector;)Z
.end method

.method public abstract hasAnyStreamVerifiersLegacy([S)Z
.end method

.method public abstract hasCryptoHashAlgorithm(I)Z
.end method

.method public abstract hasCryptoSignatureAlgorithm(I)Z
.end method

.method public abstract hasDHAgreement()Z
.end method

.method public abstract hasECDHAgreement()Z
.end method

.method public abstract hasEncryptionAlgorithm(I)Z
.end method

.method public abstract hasHKDFAlgorithm(I)Z
.end method

.method public abstract hasKemAgreement()Z
.end method

.method public abstract hasMacAlgorithm(I)Z
.end method

.method public abstract hasNamedGroup(I)Z
.end method

.method public abstract hasRSAEncryption()Z
.end method

.method public abstract hasSRPAuthentication()Z
.end method

.method public abstract hasSignatureAlgorithm(S)Z
.end method

.method public abstract hasSignatureAndHashAlgorithm(Lorg/bouncycastle/tls/SignatureAndHashAlgorithm;)Z
.end method

.method public abstract hasSignatureScheme(I)Z
.end method

.method public abstract hkdfInit(I)Lorg/bouncycastle/tls/crypto/TlsSecret;
.end method
