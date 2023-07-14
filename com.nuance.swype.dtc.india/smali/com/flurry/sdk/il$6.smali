.class final Lcom/flurry/sdk/il$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/il;->m()V
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
        "Lcom/flurry/sdk/im;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a$1f969724()Lcom/flurry/sdk/kz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/kz",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/im;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/flurry/sdk/ky;

    new-instance v1, Lcom/flurry/sdk/im$a;

    invoke-direct {v1}, Lcom/flurry/sdk/im$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    return-object v0
.end method
