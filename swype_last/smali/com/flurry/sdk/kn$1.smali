.class final Lcom/flurry/sdk/kn$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kn;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kn;)V
    .registers 2

    .prologue
    .line 491
    iput-object p1, p0, Lcom/flurry/sdk/kn$1;->a:Lcom/flurry/sdk/kn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kn$1;->a:Lcom/flurry/sdk/kn;

    invoke-static {v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 495
    iget-object v0, p0, Lcom/flurry/sdk/kn$1;->a:Lcom/flurry/sdk/kn;

    invoke-static {v0}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 500
    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method
