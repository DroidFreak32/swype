.class public final Lcom/bumptech/glide/load/resource/NullResourceEncoder;
.super Ljava/lang/Object;
.source "NullResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/NullResourceEncoder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/NullResourceEncoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/NullResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/NullResourceEncoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 13
    .local p0, "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/bumptech/glide/load/resource/NullResourceEncoder;, "Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
    const-string/jumbo v0, ""

    return-object v0
.end method
