.class final Lcom/flurry/sdk/if$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/if;-><init>()V
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


# instance fields
.field final synthetic a:Lcom/flurry/sdk/if;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/if;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/flurry/sdk/if$8;->a:Lcom/flurry/sdk/if;

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
    .line 210
    new-instance v0, Lcom/flurry/sdk/ky;

    new-instance v1, Lcom/flurry/sdk/im$a;

    invoke-direct {v1}, Lcom/flurry/sdk/im$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    return-object v0
.end method
