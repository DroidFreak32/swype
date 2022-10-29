.class final Lcom/flurry/sdk/if$7;
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
        "Lcom/flurry/sdk/id;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/if;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/if;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/flurry/sdk/if$7;->a:Lcom/flurry/sdk/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a$1f969724()Lcom/flurry/sdk/kz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/kz",
            "<",
            "Lcom/flurry/sdk/id;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/flurry/sdk/id$a;

    invoke-direct {v0}, Lcom/flurry/sdk/id$a;-><init>()V

    return-object v0
.end method
