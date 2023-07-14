.class final Lcom/flurry/sdk/ln$1;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ln;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ln;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/flurry/sdk/ln$1;->a:Lcom/flurry/sdk/ln;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/flurry/sdk/ll;

    invoke-direct {v0}, Lcom/flurry/sdk/ll;-><init>()V

    .line 1025
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/jz;)V

    .line 24
    iget-object v0, p0, Lcom/flurry/sdk/ln$1;->a:Lcom/flurry/sdk/ln;

    invoke-static {v0}, Lcom/flurry/sdk/ln;->a(Lcom/flurry/sdk/ln;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ln$1;->a:Lcom/flurry/sdk/ln;

    invoke-static {v0}, Lcom/flurry/sdk/ln;->b(Lcom/flurry/sdk/ln;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ln$1;->a:Lcom/flurry/sdk/ln;

    invoke-static {v1}, Lcom/flurry/sdk/ln;->c(Lcom/flurry/sdk/ln;)Lcom/flurry/sdk/lw;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ln$1;->a:Lcom/flurry/sdk/ln;

    invoke-static {v2}, Lcom/flurry/sdk/ln;->d(Lcom/flurry/sdk/ln;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Runnable;J)V

    .line 27
    :cond_0
    return-void
.end method
