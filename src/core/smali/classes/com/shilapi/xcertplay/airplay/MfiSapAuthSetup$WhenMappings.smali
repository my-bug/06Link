.class public final synthetic Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup$WhenMappings;
.super Ljava/lang/Object;
.source "MfiSapAuthSetup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->values()[Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->MFI:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->BAA:Lcom/shilapi/xcertplay/mfi/MfiCertificateType;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/mfi/MfiCertificateType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/shilapi/xcertplay/airplay/MfiSapAuthSetup$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
