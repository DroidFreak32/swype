.class public final Lcom/fsck/k9/provider/MessageProvider$UriExtractor;
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
    name = "UriExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/provider/MessageProvider$FieldExtractor",
        "<",
        "Lcom/fsck/k9/activity/MessageInfoHolder;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, Lcom/fsck/k9/activity/MessageInfoHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p1, Lcom/fsck/k9/activity/MessageInfoHolder;->uri:Ljava/lang/String;

    return-object v0
.end method
