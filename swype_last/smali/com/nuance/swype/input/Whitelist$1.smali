.class final Lcom/nuance/swype/input/Whitelist$1;
.super Lcom/nuance/swype/input/Whitelist;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/Whitelist;->fromBlacklist(Landroid/content/Context;I)Lcom/nuance/swype/input/Whitelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resIdList"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/Whitelist;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final allows(Ljava/lang/String;)Z
    .registers 3
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/Whitelist$1;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
