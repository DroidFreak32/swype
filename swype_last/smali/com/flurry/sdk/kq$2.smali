.class final Lcom/flurry/sdk/kq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka",
        "<",
        "Lcom/flurry/sdk/jj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kq;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/sdk/kq$2;->a:Lcom/flurry/sdk/kq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/jz;)V
    .registers 3

    .prologue
    .line 42
    check-cast p1, Lcom/flurry/sdk/jj;

    .line 1045
    iget-boolean v0, p1, Lcom/flurry/sdk/jj;->a:Z

    if-eqz v0, :cond_b

    .line 1046
    iget-object v0, p0, Lcom/flurry/sdk/kq$2;->a:Lcom/flurry/sdk/kq;

    invoke-static {v0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/kq;)V

    .line 42
    :cond_b
    return-void
.end method
