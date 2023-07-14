.class final Lcom/flurry/sdk/id$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/id$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/id$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/id$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/flurry/sdk/id$a$1;->a:Lcom/flurry/sdk/id$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
