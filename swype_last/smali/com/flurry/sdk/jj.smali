.class public final Lcom/flurry/sdk/jj;
.super Lcom/flurry/sdk/jz;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lcom/flurry/sdk/jk$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    const-string/jumbo v0, "com.flurry.android.sdk.NetworkStateEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/jz;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
