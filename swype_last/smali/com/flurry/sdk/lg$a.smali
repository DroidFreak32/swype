.class final Lcom/flurry/sdk/lg$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lg;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lg;)V
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/flurry/sdk/lg$a;->a:Lcom/flurry/sdk/lg;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/lg$a;->a:Lcom/flurry/sdk/lg;

    invoke-virtual {v0}, Lcom/flurry/sdk/lg;->a()V

    .line 22
    new-instance v0, Lcom/flurry/sdk/lh;

    invoke-direct {v0}, Lcom/flurry/sdk/lh;-><init>()V

    .line 1025
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/jz;)V

    .line 24
    return-void
.end method
