.class final Lcom/flurry/sdk/ku$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ku$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ku$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ku$a;Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 46
    iput-object p1, p0, Lcom/flurry/sdk/ku$a$2;->a:Lcom/flurry/sdk/ku$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method
