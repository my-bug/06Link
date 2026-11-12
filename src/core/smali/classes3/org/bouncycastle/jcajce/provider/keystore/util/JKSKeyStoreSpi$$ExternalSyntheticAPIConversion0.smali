.class public final synthetic Lorg/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/util/Hashtable;)Ljava/util/Set;
    .locals 1

    .line 0
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p0}, Lj$/util/DesugarCollections;->bridge_synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
