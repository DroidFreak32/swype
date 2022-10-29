.class final Lcom/flurry/sdk/kt$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lc",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/ku;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kt;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/flurry/sdk/kt$4;->a:Lcom/flurry/sdk/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a$1f969724()Lcom/flurry/sdk/kz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/kz",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ku;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/flurry/sdk/ky;

    new-instance v1, Lcom/flurry/sdk/ku$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ku$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    return-object v0
.end method
