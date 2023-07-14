.class public final Lcom/google/api/client/repackaged/com/google/common/base/Splitter$1;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/repackaged/com/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorMatcher:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;


# direct methods
.method public constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$1;->val$separatorMatcher:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic iterator(Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/repackaged/com/google/common/base/Splitter;
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 146
    .line 1149
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$1$1;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter$1;Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    .line 146
    return-object v0
.end method
