.class final Lcom/flurry/sdk/kt$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kt;->a(Ljava/lang/String;[B)V
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
        "Lcom/flurry/sdk/ks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kt;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/flurry/sdk/kt$6;->a:Lcom/flurry/sdk/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a$1f969724()Lcom/flurry/sdk/kz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/kz",
            "<",
            "Lcom/flurry/sdk/ks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lcom/flurry/sdk/ks$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ks$a;-><init>()V

    return-object v0
.end method
