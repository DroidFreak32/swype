.class public final Lcom/nuance/nmdp/speechkit/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final OBFUSCATED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5
    const-class v0, Lcom/nuance/nmdp/speechkit/util/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lcom/nuance/nmdp/speechkit/util/Config;->OBFUSCATED:Z

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 10
    const-string/jumbo v0, "NuSwypeSpeechKit"

    return-object v0
.end method

.method public static getNmdpVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    const-string/jumbo v0, "1.6.3.0B3 r19007"

    return-object v0
.end method
