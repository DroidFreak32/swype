.class final Lcom/flurry/sdk/ja$5$1;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja$5;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/flurry/sdk/ja$5$1;->a:Lcom/flurry/sdk/ja$5;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    .line 2080
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/kq;->c:Z

    .line 390
    return-void
.end method
