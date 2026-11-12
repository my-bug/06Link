.class public interface abstract Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;
.super Ljava/lang/Object;
.source "MfiAuthenticationClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/mfi/MfiAuthenticator$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007H&J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH&J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000f\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/mfi/MfiAuthenticator;",
        "",
        "certificateType",
        "Lcom/shilapi/xcertplay/mfi/MfiCertificateType;",
        "getCertificateType",
        "()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;",
        "protocolMajor",
        "",
        "readCertificate",
        "",
        "maximumOutputLength",
        "signChallenge",
        "challenge",
        "baaCertificates",
        "Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract baaCertificates()Lcom/shilapi/xcertplay/mfi/BaaCertificatePair;
.end method

.method public abstract getCertificateType()Lcom/shilapi/xcertplay/mfi/MfiCertificateType;
.end method

.method public abstract protocolMajor()I
.end method

.method public abstract readCertificate(I)[B
.end method

.method public abstract signChallenge([B)[B
.end method
