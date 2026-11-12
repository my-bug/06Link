.class Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jsse/provider/ReflectionUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$parameterTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;->val$className:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;->val$parameterTypes:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;->run()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    const-class v0, Lorg/bouncycastle/jsse/provider/ReflectionUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;->val$className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;->val$className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jsse/provider/ReflectionUtil$3;->val$parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
