.class public final Lcom/fsck/k9/provider/MessageProvider$CountExtractor;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 138
    .local p0, "this":Lcom/fsck/k9/provider/MessageProvider$CountExtractor;, "Lcom/fsck/k9/provider/MessageProvider$CountExtractor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;->mCount:Ljava/lang/Integer;

    .line 140
    return-void
.end method


# virtual methods
.method public final bridge synthetic getField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 134
    .local p0, "this":Lcom/fsck/k9/provider/MessageProvider$CountExtractor;, "Lcom/fsck/k9/provider/MessageProvider$CountExtractor<TT;>;"
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$CountExtractor;->mCount:Ljava/lang/Integer;

    return-object v0
.end method
