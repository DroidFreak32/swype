.class public final Lcom/flurry/sdk/jo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/flurry/sdk/jo;->b:Z

    .line 21
    return-void
.end method
