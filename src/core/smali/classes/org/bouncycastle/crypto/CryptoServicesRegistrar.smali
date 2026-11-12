.class public final Lorg/bouncycastle/crypto/CryptoServicesRegistrar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;,
        Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;
    }
.end annotation


# static fields
.field private static final CanSetConstraints:Ljava/security/Permission;

.field private static final CanSetDefaultProperty:Ljava/security/Permission;

.field private static final CanSetDefaultRandom:Ljava/security/Permission;

.field private static final CanSetThreadProperty:Ljava/security/Permission;

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final defaultRandomProviderImpl:Lorg/bouncycastle/crypto/SecureRandomProvider;

.field private static final defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/bouncycastle/crypto/SecureRandomProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final globalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final noConstraintsImpl:Lorg/bouncycastle/crypto/CryptoServicesConstraints;

.field private static final preconfiguredConstraints:Z

.field private static final servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/bouncycastle/crypto/CryptoServicesConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "globalConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    const-string/jumbo v1, "threadLocalConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "defaultRandomConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "constraints"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetConstraints:Ljava/security/Permission;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;-><init>(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$1;)V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->defaultRandomProviderImpl:Lorg/bouncycastle/crypto/SecureRandomProvider;

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$1;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lorg/bouncycastle/crypto/CryptoServicesConstraints;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "fca682ce8e12caba26efccf7110e526db078b05edecbcd1eb4a208f3ae1617ae01f35b91a47e6df63413c5e12ed0899bcd132acd50d99151bdc43ee737592e17"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "962eddcc369cba8ebb260ee6b6a126d9346e38c5"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "678471b27a9cf44ee91a49c5147db1a9aaf244f05a434d6486931d2d14271b9e35030b71fd73da179069b32e2935630e1c2062354d0da20a6c416e50be794ca4"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    const-string v8, "b869c82b35d70e1b1ff91b28e37a62ecdc34409b"

    invoke-static {v8}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x7b

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    new-instance v3, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "e9e642599d355f37c97ffd3567120b8e25c9cd43e927b3a9670fbec5d890141922d2c3b3ad2480093799869d1e846aab49fab0ad26d2ce6a22219d470bce7d777d4a21fbe9c270b57f607002f3cef8393694cf45ee3688c11a8c56ab127a3daf"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "9cdbd84c9f1ac2f38d0f80f42ab952e7338bf511"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "30470ad5a005fb14ce2d9dcd87e38bc7d1b1c5facbaecbe95f190aa7a31d23c4dbbcbe06174544401a5b2c020965d8c2bd2171d3668445771f74ba084d2029d83c1c158547f3a9f1a2715be23d51ae4d3e5a1f6a7064f316933a346d3f529252"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    const-string v9, "77d0f8c4dad15eb8c4f2f8d6726cefd96d5bb399"

    invoke-static {v9}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v9

    const/16 v10, 0x107

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v3, v4, v6, v7, v8}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    new-instance v4, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c7"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "9760508f15230bccb292b982a2eb840bf0581cf5"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a"

    invoke-direct {v8, v9, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    const-string v10, "8d5155894229d5e689ee01e6018a237e2cae64cd"

    invoke-static {v10}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v11, 0x5c

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    new-instance v6, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "95475cf5d93e596c3fcd1d902add02f427f5f3c7210313bb45fb4d5bb2e5fe1cbd678cd4bbdd84c9836be1f31c0777725aeb6c2fc38b85f48076fa76bcd8146cc89a6fb2f706dd719898c2083dc8d896f84062e2c9c94d137b054a8d8096adb8d51952398eeca852a0af12df83e475aa65d4ec0c38a9560d5661186ff98b9fc9eb60eee8b030376b236bc73be3acdbd74fd61c1d2475fa3077b8f080467881ff7e1ca56fee066d79506ade51edbb5443a563927dbc4ba520086746175c8885925ebc64c6147906773496990cb714ec667304e261faee33b3cbdf008e0c3fa90650d97d3909c9275bf4ac86ffcb3d03e6dfc8ada5934242dd6d3bcca2a406cb0b"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "f8183668ba5fc5bb06b5981e6d8b795d30b8978d43ca0ec572e37e09939a9773"

    invoke-direct {v8, v9, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "42debb9da5b3d88cc956e08787ec3f3a09bba5f48b889a74aaf53174aa0fbe7e3c5b8fcd7a53bef563b0e98560328960a9517f4014d3325fc7962bf1e049370d76d1314a76137e792f3f0db859d095e4a5b932024f079ecf2ef09c797452b0770e1350782ed57ddf794979dcef23cb96f183061965c4ebc93c9c71c56b925955a75f94cccf1449ac43d586d0beee43251b0b2287349d68de0d144403f13e802f4146d882e057af19b6f6275c6676c8fa0e3ca2713a3257fd1b27d0639f695e347d8d1cf9ac819a26ca9b04cb0eb9b7b035988d15bbac65212a55239cfc7e58fae38d7250ab9991ffbc97134025fe8ce04c4399ad96569be91a546f4978693c7a"

    invoke-direct {v9, v10, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    const-string v10, "b0b4417601b59cbc9d8ac8f935cadaec4f5fbb2f23785609ae466748d9b5a536"

    invoke-static {v10}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v11, 0x1f1

    invoke-direct {v5, v10, v11}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v6, v7, v8, v9, v5}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const/4 v7, 0x4

    new-array v8, v7, [Lorg/bouncycastle/crypto/params/DSAParameters;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v10, 0x1

    aput-object v3, v8, v10

    const/4 v11, 0x2

    aput-object v4, v8, v11

    const/4 v12, 0x3

    aput-object v6, v8, v12

    invoke-static {v5, v8}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    new-array v7, v7, [Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lorg/bouncycastle/crypto/params/DSAParameters;)Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lorg/bouncycastle/crypto/params/DSAParameters;)Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lorg/bouncycastle/crypto/params/DSAParameters;)Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    aput-object v2, v7, v11

    invoke-static {v6}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lorg/bouncycastle/crypto/params/DSAParameters;)Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    aput-object v2, v7, v12

    invoke-static {v5, v7}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getDefaultConstraints()Lorg/bouncycastle/crypto/CryptoServicesConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const/4 v9, 0x1

    :cond_0
    sput-boolean v9, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->preconfiguredConstraints:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/CryptoServicesConstraints;

    invoke-interface {v0, p0}, Lorg/bouncycastle/crypto/CryptoServicesConstraints;->check(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private static checkPermission(Ljava/security/Permission;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$3;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$3;-><init>(Ljava/lang/SecurityManager;Ljava/security/Permission;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static chooseLowerBound(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_3

    const/16 v0, 0x800

    if-gt p0, v0, :cond_0

    const/16 p0, 0xe0

    return p0

    :cond_0
    const/16 v0, 0xc00

    if-gt p0, v0, :cond_1

    const/16 p0, 0x100

    return p0

    :cond_1
    const/16 v0, 0x1e00

    if-gt p0, v0, :cond_2

    const/16 p0, 0x180

    return p0

    :cond_2
    const/16 p0, 0x200

    return p0

    :cond_3
    const/16 p0, 0xa0

    return p0
.end method

.method public static clearGlobalProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->localClearThreadProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$100(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static clearThreadProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->localClearThreadProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultConstraints()Lorg/bouncycastle/crypto/CryptoServicesConstraints;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lorg/bouncycastle/crypto/CryptoServicesConstraints;

    return-object v0
.end method

.method public static getProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSecureRandom()Ljava/security/SecureRandom;
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->defaultRandomProviderImpl:Lorg/bouncycastle/crypto/SecureRandomProvider;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/SecureRandomProvider;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecureRandomProvider;->get()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getServicesConstraints()Lorg/bouncycastle/crypto/CryptoServicesConstraints;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/CryptoServicesConstraints;

    return-object v0
.end method

.method public static getSizedProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "I)TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$200(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :goto_0
    array-length p0, v0

    if-eq v3, p0, :cond_4

    aget-object p0, v0, v3

    check-cast p0, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$200(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object p0

    const-class v2, Lorg/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_1
    array-length p0, v0

    if-eq v3, p0, :cond_4

    aget-object p0, v0, v3

    check-cast p0, Lorg/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_3

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static getSizedProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private static localClearThreadProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$100(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private static varargs localSetGlobalProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$200(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->localSetThread(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$100(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad property value passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static localSetThread(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$100(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static lookupProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$100(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$100(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_1
    :goto_1
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    goto :goto_0
.end method

.method public static varargs setGlobalProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->defaultRandomProviderImpl:Lorg/bouncycastle/crypto/SecureRandomProvider;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$2;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$2;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setSecureRandomProvider(Lorg/bouncycastle/crypto/SecureRandomProvider;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setServicesConstraints(Lorg/bouncycastle/crypto/CryptoServicesConstraints;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetConstraints:Ljava/security/Permission;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lorg/bouncycastle/crypto/CryptoServicesConstraints;

    :cond_0
    sget-boolean v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->preconfiguredConstraints:Z

    if-eqz v0, :cond_2

    const-string v0, "org.bouncycastle.constraints.allow_override"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->LOG:Ljava/util/logging/Logger;

    const-string v0, "attempt to override pre-configured constraints ignored"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs setThreadProperty(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    # getter for: Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;
    invoke-static {p0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;->access$200(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->localSetThread(Lorg/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad property value passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toDH(Lorg/bouncycastle/crypto/params/DSAParameters;)Lorg/bouncycastle/crypto/params/DHParameters;
    .locals 9

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->chooseLowerBound(I)I

    move-result v5

    new-instance v1, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v8, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getValidationParameters()Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->getSeed()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAParameters;->getValidationParameters()Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;->getCounter()I

    move-result p0

    invoke-direct {v8, v0, p0}, Lorg/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHValidationParameters;)V

    return-object v1
.end method
