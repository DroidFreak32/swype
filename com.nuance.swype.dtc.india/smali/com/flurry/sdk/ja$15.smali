.class final Lcom/flurry/sdk/ja$15;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->a()V
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
    .line 293
    iput-object p1, p0, Lcom/flurry/sdk/ja$15;->a:Lcom/flurry/sdk/ja;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    .line 2084
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flurry/sdk/kq;->c:Z

    .line 2087
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/kq$4;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/kq$4;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method
