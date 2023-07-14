.class final Lcom/flurry/sdk/ja$5;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/flurry/sdk/ja$5;->a:Lcom/flurry/sdk/ja;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/flurry/sdk/ja$5;->a:Lcom/flurry/sdk/ja;

    invoke-static {v0}, Lcom/flurry/sdk/ja;->g(Lcom/flurry/sdk/ja;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 1087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 373
    if-eqz v0, :cond_0

    .line 374
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 2087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 374
    invoke-virtual {v0}, Lcom/flurry/sdk/if;->c()V

    .line 385
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 2094
    iget-object v0, v0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    .line 385
    if-eqz v0, :cond_1

    .line 386
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$5$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$5$1;-><init>(Lcom/flurry/sdk/ja$5;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 393
    :cond_1
    return-void
.end method
