.class final synthetic Lcom/shilapi/xcertplay/network/TcpDiagnostics$hotspotConnections$1$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "TcpDiagnostics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/TcpDiagnostics;->hotspotConnections(ILjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/network/TcpDiagnostics$hotspotConnections$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/network/TcpDiagnostics$hotspotConnections$1$3;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/network/TcpDiagnostics$hotspotConnections$1$3;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/network/TcpDiagnostics$hotspotConnections$1$3;->INSTANCE:Lcom/shilapi/xcertplay/network/TcpDiagnostics$hotspotConnections$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "plus(I)I"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-string v3, "plus"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(II)Ljava/lang/Integer;
    .locals 0

    add-int/2addr p1, p2

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/network/TcpDiagnostics$hotspotConnections$1$3;->invoke(II)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
