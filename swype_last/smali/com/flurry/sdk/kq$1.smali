.class final Lcom/flurry/sdk/kq$1;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kq;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/flurry/sdk/kq$1;->a:Lcom/flurry/sdk/kq;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/kq$1;->a:Lcom/flurry/sdk/kq;

    invoke-static {v0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/kq;)V

    .line 39
    return-void
.end method
