.class final Lcom/flurry/sdk/kq$3;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kq;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kq;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/kq$3;->a:Lcom/flurry/sdk/kq;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/kq$3;->a:Lcom/flurry/sdk/kq;

    iget-object v1, p0, Lcom/flurry/sdk/kq$3;->a:Lcom/flurry/sdk/kq;

    invoke-static {v1}, Lcom/flurry/sdk/kq;->b(Lcom/flurry/sdk/kq;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kq;->b(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/kq$3;->a:Lcom/flurry/sdk/kq;

    invoke-static {v0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/kq;)V

    .line 65
    return-void
.end method
