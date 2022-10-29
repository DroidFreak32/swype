.class Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;
.super Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakizashiAppInfo"
.end annotation


# static fields
.field static final WAKIZASHI_PACKAGE:Ljava/lang/String; = "com.facebook.wakizashi"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/internal/NativeProtocol$1;

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLoginActivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    const-string/jumbo v0, "com.facebook.katana.ProxyAuth"

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 330
    const-string/jumbo v0, "com.facebook.wakizashi"

    return-object v0
.end method
