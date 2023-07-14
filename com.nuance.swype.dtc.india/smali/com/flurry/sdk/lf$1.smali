.class final Lcom/flurry/sdk/lf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lf;
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
        "Lcom/flurry/sdk/lh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lf;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/lf$1;->a:Lcom/flurry/sdk/lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 1

    .prologue
    .line 60
    .line 1063
    iget-object v0, p0, Lcom/flurry/sdk/lf$1;->a:Lcom/flurry/sdk/lf;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->a(Lcom/flurry/sdk/lf;)V

    .line 60
    return-void
.end method
