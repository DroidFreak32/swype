.class final Lcom/flurry/sdk/ji$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ji;
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
        "Lcom/flurry/sdk/ll;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ji;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ji;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/flurry/sdk/ji$1;->a:Lcom/flurry/sdk/ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .registers 6

    .prologue
    .line 63
    .line 1066
    iget-object v0, p0, Lcom/flurry/sdk/ji$1;->a:Lcom/flurry/sdk/ji;

    invoke-static {v0}, Lcom/flurry/sdk/ji;->a(Lcom/flurry/sdk/ji;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/flurry/sdk/ji$1;->a:Lcom/flurry/sdk/ji;

    invoke-static {v0}, Lcom/flurry/sdk/ji;->a(Lcom/flurry/sdk/ji;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    .line 1067
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/ji;->f()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/flurry/sdk/ji$1;->a:Lcom/flurry/sdk/ji;

    invoke-static {v0}, Lcom/flurry/sdk/ji;->b(Lcom/flurry/sdk/ji;)V

    .line 63
    :cond_2a
    return-void
.end method
